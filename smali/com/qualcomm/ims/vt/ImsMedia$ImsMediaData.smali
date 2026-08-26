.class Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;
.super Ljava/lang/Object;
.source "ImsMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/ImsMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsMediaData"
.end annotation


# instance fields
.field private mCalculatedSharedDisplayHeight:I

.field private mCalculatedSharedDisplayWidth:I

.field private mDownscaledHeight:I

.field private mDownscaledWidth:I

.field private mNegotiatedFps:I

.field private mNegotiatedHeight:I

.field private mNegotiatedWidth:I

.field private mPeerHeight:I

.field private mPeerWidth:I

.field private mPixelsHeight:I

.field private mPixelsWidth:I

.field private mRecordingSurface:Landroid/view/Surface;

.field private mSurface:Landroid/view/Surface;

.field private mUIOrientationMode:I

.field private mVideoQualityLevel:I

.field final synthetic this$0:Lcom/qualcomm/ims/vt/ImsMedia;


# direct methods
.method static bridge synthetic -$$Nest$mcalculateSharedDisplayParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->calculateSharedDisplayParams()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDownscaledHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getDownscaledHeight()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetDownscaledWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getDownscaledWidth()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetFps(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getFps()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getHeight()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getOrientationMode()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPeerHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getPeerHeight()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPeerWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getPeerWidth()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getRecordingSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSharedDisplayHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getSharedDisplayHeight()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSharedDisplayWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getSharedDisplayWidth()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVideoQualityLevel(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getVideoQualityLevel()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getWidth()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeUpdatePreviewParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;IIILandroid/view/Surface;I)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->maybeUpdatePreviewParams(IIILandroid/view/Surface;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetDownscaledDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->setDownscaledDimensions(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLocalRenderingParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->setLocalRenderingParams(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->setOrientationMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPeerDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->setPeerDimensions(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->setRecordingSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSharedDisplayDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->setSharedDisplayDimensions(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVideoQualityLevel(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->setVideoQualityLevel(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLoopbackParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->updateLoopbackParams(III)V

    return-void
.end method

.method constructor <init>(Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->this$0:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x140

    .line 94
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedHeight:I

    const/16 v0, 0xf0

    .line 95
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedWidth:I

    const/4 v1, 0x2

    .line 96
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mUIOrientationMode:I

    const/16 v1, 0x14

    .line 97
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedFps:I

    .line 98
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayWidth:I

    .line 99
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayHeight:I

    const/4 v1, -0x1

    .line 100
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mDownscaledWidth:I

    .line 101
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mDownscaledHeight:I

    .line 102
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPixelsWidth:I

    .line 103
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPixelsHeight:I

    .line 104
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPeerHeight:I

    .line 105
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPeerWidth:I

    .line 106
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mVideoQualityLevel:I

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mSurface:Landroid/view/Surface;

    .line 108
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mRecordingSurface:Landroid/view/Surface;

    return-void
.end method

.method private calculateSharedDisplayParams()V
    .locals 6

    .line 183
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPixelsWidth:I

    int-to-double v0, v0

    .line 184
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getSupportedWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 185
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getSupportedHeight()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPixelsHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 183
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    move v0, v1

    .line 189
    :cond_0
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedWidth:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayWidth:I

    .line 190
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedHeight:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayHeight:I

    .line 191
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPixelsWidth:I

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPixelsHeight:I

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mayBeTrimSharedDisplaySize(IZ)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "calculateSharedDisplayParams mCalculatedSharedDisplayWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCalculatedSharedDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void
.end method

.method private getDownscaledHeight()I
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Downscaled height = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mDownscaledHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 349
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mDownscaledHeight:I

    return p0
.end method

.method private getDownscaledWidth()I
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Downscaled Width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mDownscaledWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 344
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mDownscaledWidth:I

    return p0
.end method

.method private getFps()I
    .locals 0

    .line 323
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedFps:I

    return p0
.end method

.method private getHeight()I
    .locals 0

    .line 319
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedHeight:I

    return p0
.end method

.method private getOrientationMode()I
    .locals 0

    .line 327
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mUIOrientationMode:I

    return p0
.end method

.method private getPeerHeight()I
    .locals 0

    .line 331
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPeerHeight:I

    return p0
.end method

.method private getPeerWidth()I
    .locals 0

    .line 335
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPeerWidth:I

    return p0
.end method

.method private getRecordingSurface()Landroid/view/Surface;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mRecordingSurface:Landroid/view/Surface;

    return-object p0
.end method

.method private getSharedDisplayHeight()I
    .locals 0

    .line 311
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayHeight:I

    return p0
.end method

.method private getSharedDisplayWidth()I
    .locals 0

    .line 307
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayWidth:I

    return p0
.end method

.method private getSupportedHeight()I
    .locals 2

    .line 286
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mDownscaledHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 287
    :cond_0
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedHeight:I

    return p0
.end method

.method private getSupportedWidth()I
    .locals 2

    .line 281
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mDownscaledWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 282
    :cond_0
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedWidth:I

    return p0
.end method

.method private getSurface()Landroid/view/Surface;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method private getVideoQualityLevel()I
    .locals 0

    .line 339
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mVideoQualityLevel:I

    return p0
.end method

.method private getWidth()I
    .locals 0

    .line 315
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedWidth:I

    return p0
.end method

.method private mayBeTrimSharedDisplaySize(IZ)V
    .locals 7

    .line 209
    const-string v0, "video/avc"

    .line 211
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 212
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 220
    invoke-virtual {v3, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    .line 221
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 222
    invoke-virtual {v4, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 223
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 224
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 231
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 232
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 233
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 234
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 240
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSmallerDimensionUpperLimit()I

    move-result v0

    .line 241
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSmallerDimensionUpperLimit()I

    move-result v3

    if-le v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 246
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mayBeTrimSharedDisplaySize: decoderWidth = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " decoderHeight = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " encoderWidth = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " encoderHeight = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " smallerCodecDimension = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " scalingFactor = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isPortrait = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smlog(Ljava/lang/String;)V

    if-le v1, v4, :cond_1

    move v1, v4

    :cond_1
    if-le v2, v5, :cond_2

    move v2, v5

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    move v0, v1

    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-ge p2, p1, :cond_5

    .line 270
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayWidth:I

    if-gt v1, v0, :cond_4

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayHeight:I

    if-le v1, v2, :cond_5

    .line 272
    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getSupportedWidth()I

    move-result v1

    sub-int v3, p1, p2

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayWidth:I

    .line 273
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->getSupportedHeight()I

    move-result v1

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mCalculatedSharedDisplayHeight:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catch_0
    move-exception p0

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mayBeTrimSharedDisplaySize: Error="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smloge(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized maybeUpdatePreviewParams(IIILandroid/view/Surface;I)Z
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedHeight:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedWidth:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedFps:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mRecordingSurface:Landroid/view/Surface;

    .line 116
    invoke-static {v0, p4}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mUIOrientationMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p5, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 118
    :cond_1
    :goto_0
    :try_start_1
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedHeight:I

    .line 119
    iput p2, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedWidth:I

    .line 120
    iput p3, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedFps:I

    .line 121
    iput-object p4, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mRecordingSurface:Landroid/view/Surface;

    .line 122
    iput p5, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mUIOrientationMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private setDownscaledDimensions(II)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mDownscaledWidth:I

    .line 149
    iput p2, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mDownscaledHeight:I

    return-void
.end method

.method private setLocalRenderingParams(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->this$0:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 296
    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedWidth:I

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedHeight:I

    .line 295
    invoke-static {v2, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smnativeSetLocalRenderingParameters(II)I

    move-result p0

    if-nez p0, :cond_0

    move v0, v1

    .line 297
    :cond_0
    invoke-static {p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$fputmArStatus(Lcom/qualcomm/ims/vt/ImsMedia;I)V

    return-void

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->this$0:Lcom/qualcomm/ims/vt/ImsMedia;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smnativeSetLocalRenderingParameters(II)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 301
    :goto_0
    invoke-static {p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$fputmArStatus(Lcom/qualcomm/ims/vt/ImsMedia;I)V

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AR status after stopAR attempt = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->this$0:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$fgetmArStatus(Lcom/qualcomm/ims/vt/ImsMedia;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void
.end method

.method private setOrientationMode(I)V
    .locals 1

    .line 160
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mUIOrientationMode:I

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Set orientation mode="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mUIOrientationMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void
.end method

.method private setPeerDimensions(II)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPeerWidth:I

    .line 154
    iput p2, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPeerHeight:I

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Updating peer values mPeerHeight="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPeerHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mPeerWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPeerWidth:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void
.end method

.method private setRecordingSurface(Landroid/view/Surface;)V
    .locals 1

    .line 138
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mRecordingSurface:Landroid/view/Surface;

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mRecordingSurface = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void
.end method

.method private setSharedDisplayDimensions(II)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPixelsWidth:I

    .line 144
    iput p2, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mPixelsHeight:I

    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private setVideoQualityLevel(I)V
    .locals 1

    .line 165
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mVideoQualityLevel:I

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Set video quality level"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mVideoQualityLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void
.end method

.method private updateLoopbackParams(III)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedHeight:I

    .line 129
    iput p2, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedWidth:I

    .line 130
    iput p3, p0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->mNegotiatedFps:I

    return-void
.end method
