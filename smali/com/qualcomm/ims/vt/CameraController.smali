.class public Lcom/qualcomm/ims/vt/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
.implements Lorg/codeaurora/ims/QImsSessionBase$Listener;
.implements Lcom/qualcomm/ims/vt/Camera$Listener;
.implements Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "CameraController"

.field private static sInstance:Lcom/qualcomm/ims/vt/CameraController;


# instance fields
.field private mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mCameras:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMedia:Lcom/qualcomm/ims/vt/ImsMedia;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMedia(Lcom/qualcomm/ims/vt/CameraController;)Lcom/qualcomm/ims/vt/ImsMedia;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStreamFromCamera(Lcom/qualcomm/ims/vt/CameraController;Lcom/qualcomm/ims/vt/Camera;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getStreamFromCamera(Lcom/qualcomm/ims/vt/Camera;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendCameraCapabilities(Lcom/qualcomm/ims/vt/CameraController;Landroid/telecom/VideoProfile$CameraCapabilities;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 298
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mContext:Landroid/content/Context;

    .line 299
    iput-object p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 300
    invoke-virtual {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 301
    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V

    .line 302
    invoke-static {p1}, Lcom/qualcomm/ims/vt/CameraManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method private checkMediaId(Ljava/lang/String;I)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 702
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mediaId mismatch with mCameraOwner"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 414
    const-string v0, "close"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 415
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 416
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/CameraController;->doClose(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doClose(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doClose: Session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->removeOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 515
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p1

    .line 516
    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez p2, :cond_0

    .line 517
    invoke-static {p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mclose(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V

    .line 518
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 520
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "doClose: Not closing camera="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " another session still requires it, session="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 522
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 520
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private doOpen(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doOpen cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    .line 323
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->setOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 324
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p0

    .line 325
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mopen(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;Ljava/lang/String;)V

    return-void
.end method

.method private getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;-><init>(Lcom/qualcomm/ims/vt/CameraController;)V

    .line 604
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/ims/vt/CameraController;
    .locals 2

    .line 372
    sget-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    if-eqz v0, :cond_0

    return-object v0

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CameraController: Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 645
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toSimpleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStreamFromCamera(Lcom/qualcomm/ims/vt/Camera;)I
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    invoke-static {v3}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mgetCamera2(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Lcom/qualcomm/ims/vt/Camera;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 341
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getStreamFromCamera camera: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public static init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/CameraController;
    .locals 1

    .line 351
    sget-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lcom/qualcomm/ims/vt/CameraController;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/CameraController;-><init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    sput-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    return-object v0

    .line 354
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CameraController: Multiple initialization"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private releaseCurrentOwner()V
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "releaseCurrentOwner: Session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->removeListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    :cond_0
    return-void
.end method

.method private removeOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeOwner: Session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    return-void

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeOwner: The session is not the correct owner. cameraOwner="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private sendCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 626
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getVideoCallProvider(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;

    move-result-object p2

    if-nez p2, :cond_1

    .line 633
    const-string p1, "sendCameraCapabilities: ImsVideoCallProvider is not available (null)."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 637
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendCameraCapabilities: New capabilities= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    invoke-interface {p2, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    return-void

    .line 627
    :cond_2
    :goto_0
    const-string p1, "sendCameraCapabilities: Camera capabilities or camera owner is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private sendCameraStatus(II)V
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0, v0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;II)V

    :cond_0
    return-void
.end method

.method private sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;II)V
    .locals 1

    if-nez p1, :cond_0

    .line 650
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "sendCameraStatus: session is null. CameraStatus="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 654
    :cond_0
    invoke-virtual {p1, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getVideoCallProvider(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;

    move-result-object p2

    if-nez p2, :cond_1

    .line 656
    const-string p1, "sendCameraStatus: ImsVideoCallProvider is not available (null)."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 660
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sendCameraStatus: Notifying Session="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 661
    invoke-interface {p2, p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;->sendCameraStatus(Z)V

    return-void
.end method

.method private setOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOwner: Session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    .line 481
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 482
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    return-void

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOwner: The session is already registered as camera owner, session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 2

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close: stream="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->doClose(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 360
    const-string v0, "dispose()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 362
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V

    const/4 p0, 0x0

    .line 363
    sput-object p0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    return-void
.end method

.method getCameraCapabilities(I)Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 4

    .line 458
    const-string v0, "getCameraCapabilities: Exception: "

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object v2

    .line 459
    invoke-static {v2}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mgetCameraCapabilities(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    .line 466
    invoke-direct {p0, v3, p1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 467
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 467
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception v2

    .line 461
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getPreviewSurface(I)Landroid/view/Surface;
    .locals 0

    .line 574
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p0

    .line 575
    invoke-static {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mgetPreviewSurface(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getRecordingSurface(I)Landroid/view/Surface;
    .locals 0

    .line 568
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p0

    .line 569
    invoke-static {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 501
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onActive(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    return-void
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V
    .locals 0

    return-void
.end method

.method public onCameraConfigChanged(IIIILandroid/view/Surface;II)V
    .locals 1

    .line 584
    const-string v0, "onCameraConfigChanged"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 586
    :try_start_0
    invoke-direct {p0, p7}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 588
    invoke-static/range {p1 .. p7}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mcameraConfigChanged(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;IIILandroid/view/Surface;II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x3

    .line 593
    invoke-direct {p0, p2, p7}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 594
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onCameraConfigChanged: Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 594
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 591
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p1, p7}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2

    .line 683
    check-cast p1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClosed: Session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/qualcomm/ims/vt/Camera;I)V
    .locals 2

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraFailed: cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    .line 674
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getStreamFromCamera(Lcom/qualcomm/ims/vt/Camera;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    return-void
.end method

.method public onHold(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    return-void
.end method

.method public onMediaDeinitialized()V
    .locals 2

    .line 550
    const-string v0, "onMediaDeinitialized. closing Camera"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    .line 556
    invoke-static {v1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mdeInit(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V

    goto :goto_0

    .line 558
    :cond_1
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public onMediaInitialized()V
    .locals 0

    return-void
.end method

.method public onRecordingDisabled(II)V
    .locals 1

    .line 542
    const-string v0, "onRecordingDisabled"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 544
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p0

    .line 545
    invoke-static {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mrecordingDisabled(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V

    return-void
.end method

.method public onRecordingEnabled(II)V
    .locals 1

    .line 527
    const-string v0, "onRecordingEnabled"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 529
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p1

    .line 531
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mrecordingEnabled(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    .line 535
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 536
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onRecordingEnabled: Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 533
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    :goto_0
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    return-void
.end method

.method public onUpdateRecorderFrameRate(III)V
    .locals 3

    .line 611
    const-string v0, "onUpdateRecorderFrameRate: Exception "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpdateRecorderFrameRate, rate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    const-string v1, "onUpdateRecorderFrameRate"

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 613
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p1

    .line 615
    :try_start_0
    invoke-static {p1, p2}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mupdateRecorderFrameRate(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 620
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 621
    invoke-direct {p0, p1, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 617
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    :goto_0
    return-void
.end method

.method public open(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 3

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "open: cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 393
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/CameraController;->doOpen(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 398
    invoke-direct {p0, p2, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "open: Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open: Failed to open, cameraId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Exception="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;II)V

    :goto_0
    return-void

    .line 389
    :cond_0
    const-string p1, "open: Invalid camera id. Camera ID is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CameraController: Invalid camera id."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPreviewSurface(Landroid/view/Surface;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPreviewSurface, surface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "setPreviewSurface: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a camera owner. Camera owner="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 431
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 435
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->isSurfaceValid(Landroid/view/Surface;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 436
    const-string p1, "setPreviewSurface:  Invalid surface"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 441
    :cond_1
    :try_start_0
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p2

    .line 442
    invoke-static {p2, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$msetPreviewSurface(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 446
    invoke-direct {p0, p2, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 447
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setPreviewSurface: Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 444
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    :goto_0
    return-void
.end method

.method public setZoom(FI)V
    .locals 0

    .line 452
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p0

    .line 453
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$msetZoom(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;F)V

    return-void
.end method
