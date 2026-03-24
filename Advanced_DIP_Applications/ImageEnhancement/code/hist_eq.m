function img_out = hist_eq(img)
    % img_he: 直方图均衡，根据 CDF 分配对应的 intensity，
    % 使得处理后的像素值较均衡地分布在 [0,255] 之间
    % MATLAB 有内置函数 histeq()，此处手动实现
    %   - img: original RGB image

    % 经试验，histeq()处理 RGB 图像时是直接对各通道 HE 再拼起来，
    % 理论上会造成一定程度的色偏，但实际上不明显，
    % 而转成 YCbCr 格式再 HE 有明显色彩。故此处保留两种方式。

    %%%%% YCbCr %%%%%
    %img = uint8(img); % 预处理，转 uint8
    %img_ycbcr = rgb2ycbcr(img);
    %Y = img_ycbcr(:,:,1);
    %Y_he = he(Y);
    %img_ycbcr(:,:,1) = Y_he;
    %img_out = ycbcr2rgb(img_ycbcr);
    %img_out = uint8(img_out);

    %%%%% RGB %%%%%
    img_int8 = uint8(img);
    img_int8(:,:,1) = he(img_int8(:,:,1));
    img_int8(:,:,2) = he(img_int8(:,:,2));
    img_int8(:,:,3) = he(img_int8(:,:,3));
    img_out = uint8(img_int8);
end

function he_channel = he(channel)

    % Paramaters Claim
    [h, w] = size(channel);
    L = 256;
    NumPixel = zeros(1, L);

    % 计算 intensity 的分布，类似于 imhist()
    for i = 1:h
        for j = 1:w
            k = channel(i,j) + 1; % intensity 范围为 [0,255]，而索引从1开始
            NumPixel(k) = NumPixel(k) + 1;
        end
    end
    ProbPixel = NumPixel / (h * w);

    % 计算像素的变换函数
    CumPixel = cumsum(ProbPixel); % 累加
    CumPixel = uint8(floor((L - 1) * CumPixel));
    he_channel = CumPixel(channel + 1); % 索引与 intensity 差1
end