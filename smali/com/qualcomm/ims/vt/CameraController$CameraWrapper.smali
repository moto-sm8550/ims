.class Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraWrapper"
.end annotation


# instance fields
.field private mCamera:Lcom/qualcomm/ims/vt/Camera;

.field private mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

.field private mCameraFacing:I

.field private mIsRecordingEnabled:Z

.field private mMountAngle:I

.field private mPreviewSurface:Landroid/view/Surface;

.field private mRecorderFrameRate:I

.field private mRecordingSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/qualcomm/ims/vt/CameraController;


# direct methods
.method static bridge synthetic -$$Nest$mcameraConfigChanged(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;IIILandroid/view/Surface;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->cameraConfigChanged(IIILandroid/view/Surface;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclose(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->close()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeInit(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->deInit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCamera2(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Lcom/qualcomm/ims/vt/Camera;
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->getCamera2()Lcom/qualcomm/ims/vt/Camera;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCameraCapabilities(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPreviewSurface(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Landroid/view/Surface;
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->getPreviewSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Landroid/view/Surface;
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->getRecordingSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mopen(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->open(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordingDisabled(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->recordingDisabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordingEnabled(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->recordingEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreviewSurface(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->setPreviewSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetZoom(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->setZoom(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRecorderFrameRate(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->updateRecorderFrameRate(I)V

    return-void
.end method

.method constructor <init>(Lcom/qualcomm/ims/vt/CameraController;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mIsRecordingEnabled:Z

    .line 40
    new-instance p1, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    const/16 v0, 0x14

    const/4 v1, 0x2

    const/16 v2, 0xf0

    const/16 v3, 0x140

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(IIII)V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 44
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result p1

    iput p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecorderFrameRate:I

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mMountAngle:I

    .line 47
    iput p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCameraFacing:I

    return-void
.end method

.method private cameraConfigChanged(IIILandroid/view/Surface;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(IIII)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 141
    iput p3, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecorderFrameRate:I

    .line 142
    iget-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecordingSurface:Landroid/view/Surface;

    .line 143
    iput-object p4, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecordingSurface:Landroid/view/Surface;

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onCameraConfigChanged, cameraConfig="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {p2}, Lcom/qualcomm/ims/vt/Camera;->isPreviewStarted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 152
    iget-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera;->stopPreview()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {p2}, Lcom/qualcomm/ims/vt/Camera;->isRecordingStarted()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecordingSurface:Landroid/view/Surface;

    .line 154
    invoke-static {p2, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 155
    const-string p1, "onCameraConfigChanged, recording surface changed. Stop recording"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera;->stopRecording()V

    .line 158
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {p1, p2}, Lcom/qualcomm/ims/vt/Camera;->reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V

    .line 159
    iget p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecorderFrameRate:I

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->updateRecorderFrameRate(I)V

    .line 160
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->updateCameraSession()V

    .line 161
    iget-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object p0

    invoke-static {p1, p0, p6}, Lcom/qualcomm/ims/vt/CameraController;->-$$Nest$msendCameraCapabilities(Lcom/qualcomm/ims/vt/CameraController;Landroid/telecom/VideoProfile$CameraCapabilities;I)V

    return-void

    .line 147
    :cond_3
    :goto_1
    const-string p1, "onCameraConfigChanged: Camera is not open deferring configuration..."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private close()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->closeCamera()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mPreviewSurface:Landroid/view/Surface;

    return-void
.end method

.method private closeCamera()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mMountAngle:I

    .line 92
    iput v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCameraFacing:I

    return-void
.end method

.method private deInit()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->closeCamera()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mIsRecordingEnabled:Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecordingSurface:Landroid/view/Surface;

    .line 102
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mPreviewSurface:Landroid/view/Surface;

    return-void
.end method

.method private getCamera2()Lcom/qualcomm/ims/vt/Camera;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    return-object p0
.end method

.method private getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCameraCapabilities mCamera="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isZoomSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 208
    iget-object v3, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v3}, Lcom/qualcomm/ims/vt/Camera;->getMaxZoom()F

    move-result v3

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCameraCapabilities: PreviewSize="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isZoomSupported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " maxZoom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    new-instance p0, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 212
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v4, v0, v1, v3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPreviewSize()Landroid/util/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->getSensorOrientation()I

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPreviewSize mountAngle = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " previewSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p0

    .line 224
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 225
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 226
    rem-int/lit16 v4, v0, 0xb4

    if-eqz v4, :cond_1

    .line 229
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_1
    if-eqz v3, :cond_2

    .line 230
    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    .line 233
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_2
    if-eqz v3, :cond_3

    .line 236
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_3
    if-nez v3, :cond_4

    .line 239
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_4
    return-object v1
.end method

.method private getPreviewSurface()Landroid/view/Surface;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method private getRecordingSurface()Landroid/view/Surface;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecordingSurface:Landroid/view/Surface;

    return-object p0
.end method

.method private open(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->closeCamera()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 60
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    invoke-static {p1, v1}, Lcom/qualcomm/ims/vt/CameraManager;->open(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    :cond_2
    if-eqz v0, :cond_3

    .line 63
    iget-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    if-eqz p1, :cond_3

    .line 64
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/Camera;->reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V

    .line 65
    iget-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecorderFrameRate:I

    invoke-virtual {p1, v0}, Lcom/qualcomm/ims/vt/Camera;->setRecorderFrameRate(I)V

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera;->getSensorOrientation()I

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isFacingFront()Z

    move-result v0

    .line 72
    iget v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCameraFacing:I

    if-ne v0, v1, :cond_5

    iget v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mMountAngle:I

    if-eq p1, v1, :cond_4

    goto :goto_1

    :cond_4
    return-void

    .line 73
    :cond_5
    :goto_1
    iput p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mMountAngle:I

    .line 74
    iput v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCameraFacing:I

    .line 75
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-static {v1, v2}, Lcom/qualcomm/ims/vt/CameraController;->-$$Nest$mgetStreamFromCamera(Lcom/qualcomm/ims/vt/CameraController;Lcom/qualcomm/ims/vt/Camera;)I

    move-result v1

    .line 76
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->this$0:Lcom/qualcomm/ims/vt/CameraController;

    invoke-static {p0}, Lcom/qualcomm/ims/vt/CameraController;->-$$Nest$fgetmMedia(Lcom/qualcomm/ims/vt/CameraController;)Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object p0

    invoke-virtual {p0, v0, p1, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->setCameraInfo(III)V

    return-void
.end method

.method private recordingDisabled()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mIsRecordingEnabled:Z

    return-void
.end method

.method private recordingEnabled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mIsRecordingEnabled:Z

    .line 196
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->updateCameraSession()V

    return-void
.end method

.method private setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 180
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 181
    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/Camera;->isRestartNeededOnPreviewSurfaceSizeChanged(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecordingSurface:Landroid/view/Surface;

    .line 184
    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/Camera;->isRestartNeededOnRecordingSurfaceSizeChanged(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    :cond_1
    const-string v0, "setPreviewSurface: Restarting camera preview..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mPreviewSurface:Landroid/view/Surface;

    .line 188
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->updateCameraSession()V

    .line 190
    :cond_2
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mPreviewSurface:Landroid/view/Surface;

    .line 191
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->updateCameraSession()V

    return-void
.end method

.method private setZoom(F)V
    .locals 4

    const-string v0, "setZoom: maxZoom="

    .line 245
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->getMaxZoom()F

    move-result v1

    .line 261
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/Camera;->getMinZoom()F

    move-result v2

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " minZoom="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " value="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/Camera;->setZoom(F)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to change zoom, value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "Exception="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setZoom: Camera is not in correct state, camera="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private updateCameraSession()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 110
    const-string v0, "updateCameraSession"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isPreviewStarted()Z

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isRecordingStarted()Z

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mPreviewSurface:Landroid/view/Surface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 120
    :goto_0
    iget-boolean v5, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mIsRecordingEnabled:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 123
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateCameraSession mPreviewSurface="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mIsRecordingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mIsRecordingEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mRecordingSurface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateCameraSession canStartRecording="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isRecordingStarted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 130
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mPreviewSurface:Landroid/view/Surface;

    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1, p0}, Lcom/qualcomm/ims/vt/Camera;->startRecording(Landroid/view/Surface;Landroid/view/Surface;)V

    return-void

    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/Camera;->startPreview(Landroid/view/Surface;)V

    return-void

    :cond_4
    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 134
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera;->stopPreview()V

    :cond_5
    return-void

    .line 112
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateCameraSession: Camera is not in correct state, camera="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private updateRecorderFrameRate(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 165
    iput p1, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mRecorderFrameRate:I

    .line 166
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/Camera;->setRecorderFrameRate(I)V

    return-void

    .line 167
    :cond_1
    :goto_0
    const-string p1, "updateRecorderFrameRate: Camera is not open deferring..."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
