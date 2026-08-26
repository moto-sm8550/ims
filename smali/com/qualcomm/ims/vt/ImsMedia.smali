.class public Lcom/qualcomm/ims/vt/ImsMedia;
.super Landroid/os/Handler;
.source "ImsMedia.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsConferenceController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;,
        Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$STREAM;,
        Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;
    }
.end annotation


# static fields
.field private static final AR_DISABLED:I = 0x0

.field private static final AR_ENABLED:I = 0x1

.field private static final AR_PENDING:I = 0x2

.field public static final AR_REQUEST_SUCCESS:I = 0x0

.field public static final CACHED_MEDIA_EVENT:I = 0x64

.field public static final CAMERA_FRAME_RATE_CHANGE_EVT:I = 0xa

.field public static final CAMERA_PARAM_READY_EVT:I = 0x1

.field public static final DATA_USAGE_EVT:I = 0x8

.field public static final DEVICE_READY_EVENT:I = 0xb

.field public static final DISPLAY_MODE_EVT:I = 0x5

.field public static final DOWN_SCALE_EVENT:I = 0xc

.field public static final DPL_INIT_FAILURE:I = -0x1

.field public static final DPL_INIT_MULTIPLE:I = -0x2

.field public static final DPL_INIT_SUCCESSFUL:I = 0x0

.field public static final DUAL_VT_CAPABILITY_EVT:I = 0xd

.field public static final DUAL_VT_INCOMING_CB_EVT:I = 0xf

.field public static final DUAL_VT_RESPONSE_CB_EVT:I = 0xe

.field private static final LOOPBACK_MODE_FPS:I = 0x14

.field private static final LOOPBACK_MODE_HEIGHT:I = 0x90

.field private static final LOOPBACK_MODE_WIDTH:I = 0xb0

.field public static final MEDIA_EVENT:I = 0x0

.field public static final PEER_RESOLUTION_CHANGE_EVT:I = 0x6

.field public static final PLAYER_START_EVENT:I = 0x3

.field public static final PLAYER_STATE_STARTED:I = 0x0

.field public static final PLAYER_STATE_STOPPED:I = 0x1

.field public static final PLAYER_STOP_EVENT:I = 0x4

.field private static final SCREEN_SHARE_DISABLED:I = 0x0

.field private static final SCREEN_SHARE_ENABLED:I = 0x1

.field private static final SCREEN_SHARE_PENDING:I = 0x2

.field public static final START_READY_EVT:I = 0x2

.field public static final STOP_READY_EVT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsMedia"

.field public static final VIDEO_QUALITY_EVT:I = 0x7

.field private static mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mInstance:Lcom/qualcomm/ims/vt/ImsMedia;


# instance fields
.field private mArStatus:I

.field private mCachedMediaEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMediaLoopback:Z

.field private mIsParamReady:Z

.field private mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

.field private final mMediaStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenShareStatus:I

.field private mShouldCacheMediaEvents:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmArStatus(Lcom/qualcomm/ims/vt/ImsMedia;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmArStatus(Lcom/qualcomm/ims/vt/ImsMedia;I)V
    .locals 0

    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smloge(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetLocalRenderingParameters(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetLocalRenderingParameters(II)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 372
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 532
    const-string v0, "imsmedia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 469
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 473
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 434
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 435
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/Map;

    .line 437
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    .line 438
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 439
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    .line 440
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 443
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    .line 445
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 450
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 452
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 474
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->initializemIsMediaLoopback()V

    return-void
.end method

.method private clearMediaEventCache()V
    .locals 1

    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 644
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private configScreenShare(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V
    .locals 1

    .line 713
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mcalculateSharedDisplayParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V

    .line 715
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSharedDisplayWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v0

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSharedDisplayHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p1

    .line 714
    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSharedDisplayParameters(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 716
    :goto_0
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    return-void
.end method

.method private static convertStream(I)Lcom/qualcomm/ims/vt/ImsMedia$STREAM;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 805
    sget-object p0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->PRIMARY:Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    return-object p0

    .line 803
    :cond_0
    sget-object p0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->ALT:Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    return-object p0

    .line 801
    :cond_1
    sget-object p0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->PRIMARY:Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    return-object p0
.end method

.method private convertToCapability(I)I
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, p0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method private doOnCachedMediaEvent()V
    .locals 6

    .line 621
    const-string v0, "doOnCachedMediaEvent: scheduling the cache"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 622
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    const-string v0, "VT lib deinitialized. Do not process cached events"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    return-void

    .line 628
    :cond_0
    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 630
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 631
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 632
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 633
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doOnCachedMediaEvent: scheduling eventId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mediaId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnMediaEvent(III)V

    goto :goto_0

    .line 638
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    .line 639
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doOnMediaEvent(III)V
    .locals 4

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received media event for stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1052
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    const-string p0, "VT lib deinitialized. Do not cache events"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    return-void

    .line 1056
    :cond_0
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1178
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Received unknown event id="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 1114
    :pswitch_1
    const-string p1, "Received DOWN_SCALE_EVENT."

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1115
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetDownscaledWidth()I

    move-result p1

    .line 1116
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetDownscaledHeight()I

    move-result p2

    .line 1115
    invoke-static {v0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetDownscaledDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    .line 1117
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    if-eq p1, v3, :cond_1

    if-ne p1, v1, :cond_6

    .line 1119
    :cond_1
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->configScreenShare(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V

    return-void

    .line 1076
    :pswitch_2
    const-string p1, "Received DEVICE_READY_EVENT."

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1077
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    if-ne p1, v3, :cond_2

    .line 1078
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecordingSurface(I)Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Landroid/view/Surface;)V

    .line 1079
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_6

    .line 1081
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object p1

    .line 1082
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSharedDisplayWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p3

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSharedDisplayHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v0

    .line 1080
    invoke-interface {p0, p2, p1, p3, v0}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    return-void

    .line 1084
    :cond_2
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-ne v1, v3, :cond_3

    .line 1085
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecordingSurface(I)Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Landroid/view/Surface;)V

    .line 1086
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_6

    .line 1088
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object p1

    .line 1089
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p3

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v0

    .line 1087
    invoke-interface {p0, p2, p1, p3, v0}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    if-nez v1, :cond_6

    .line 1094
    :cond_4
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    .line 1095
    invoke-interface {p1, p2, v1, v2, v2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    .line 1098
    :cond_5
    invoke-direct {p0, p2, v0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onCameraConfigChanged(ILcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V

    return-void

    .line 1169
    :pswitch_3
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecorderFrameRate(I)I

    move-result p1

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received CAMERA_FRAME_RATE_CHANGE_EVT, rate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    if-lez p1, :cond_6

    .line 1172
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 1173
    invoke-interface {v0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onUpdateRecorderFrameRate(III)V

    goto :goto_0

    .line 1137
    :pswitch_4
    const-string p1, "Received STOP_READY_EVT"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1138
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 1139
    invoke-interface {p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingDisabled(II)V

    goto :goto_1

    .line 1163
    :pswitch_5
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetVideoQualityIndication(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetVideoQualityLevel(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V

    .line 1164
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_6

    .line 1165
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetVideoQualityLevel(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p1

    invoke-interface {p0, p2, p1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onVideoQualityEvent(II)V

    return-void

    .line 1123
    :pswitch_6
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetPeerWidth(I)I

    move-result p1

    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetPeerHeight(I)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetPeerDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    .line 1124
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_6

    .line 1125
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetPeerWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p1

    .line 1126
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetPeerHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v0

    .line 1125
    invoke-interface {p0, p2, p1, v0, p3}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPeerResolutionChanged(IIII)V

    return-void

    .line 1143
    :pswitch_7
    const-string p1, "Received DISPLAY_MODE_EVT"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1144
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetUIOrientationMode(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V

    .line 1145
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_6

    .line 1146
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p1

    invoke-interface {p0, p2, p1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onOrientationModeChanged(II)V

    return-void

    .line 1157
    :pswitch_8
    const-string p1, "Received PLAYER_STOP_EVT"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1158
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_6

    .line 1159
    invoke-interface {p0, p2, v3, p3}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(III)V

    return-void

    .line 1150
    :pswitch_9
    const-string p1, "Received PLAYER_START_EVT"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1151
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_6

    const/4 p1, 0x0

    .line 1152
    invoke-interface {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(III)V

    return-void

    .line 1130
    :pswitch_a
    const-string p1, "Received START_READY_EVT. Camera recording can be started"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1131
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 1132
    invoke-interface {p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingEnabled(II)V

    goto :goto_2

    :cond_6
    return-void

    .line 1059
    :pswitch_b
    invoke-direct {p0, v0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->updatePreviewParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    if-nez p1, :cond_7

    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-nez p1, :cond_7

    .line 1062
    const-string p1, "Received PARAM_READY_EVT and not in Screen Share modeOr AR call, Updating negotiated values"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1064
    invoke-direct {p0, p2, v0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onCameraConfigChanged(ILcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V

    goto :goto_4

    .line 1065
    :cond_7
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    if-eq p1, v1, :cond_9

    if-ne p1, v3, :cond_8

    goto :goto_3

    .line 1068
    :cond_8
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-ne p1, v1, :cond_a

    .line 1069
    invoke-static {v0, v3}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetLocalRenderingParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Z)V

    goto :goto_4

    .line 1067
    :cond_9
    :goto_3
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->configScreenShare(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V

    .line 1071
    :cond_a
    :goto_4
    iput-boolean v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    .line 1072
    invoke-static {v0, v2, v2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetDownscaledDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;-><init>(Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 814
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/ImsMedia;
    .locals 2

    const-class v0, Lcom/qualcomm/ims/vt/ImsMedia;

    monitor-enter v0

    .line 459
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    if-nez v1, :cond_0

    .line 460
    new-instance v1, Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-direct {v1}, Lcom/qualcomm/ims/vt/ImsMedia;-><init>()V

    sput-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 462
    :cond_0
    sget-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .locals 2

    if-nez p0, :cond_0

    .line 1397
    const-string p0, "surface is null"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    .line 1398
    new-instance p0, Landroid/util/Size;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 1400
    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetSurfaceWidth(Landroid/view/Surface;)I

    move-result v1

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetSurfaceHeight(Landroid/view/Surface;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1409
    :cond_1
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeHaveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private initializemIsMediaLoopback()V
    .locals 3

    .line 610
    const-string v0, "net.lte.VT_LOOPBACK_ENABLE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 611
    :cond_0
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    return-void
.end method

.method public static isSurfaceValid(Landroid/view/Surface;)Z
    .locals 2

    .line 1390
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object p0

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surface size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1392
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 1435
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 1439
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1

    .line 1443
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native nativeDeInit()V
.end method

.method private static native nativeDualVtAnswer(III)V
.end method

.method private static native nativeDualVtRequest(II)V
.end method

.method private static native nativeGetDownscaledHeight()I
.end method

.method private static native nativeGetDownscaledWidth()I
.end method

.method private static native nativeGetNegotiatedFPS(I)I
.end method

.method private static native nativeGetNegotiatedHeight(I)I
.end method

.method private static native nativeGetNegotiatedWidth(I)I
.end method

.method private static native nativeGetPeerHeight(I)I
.end method

.method private static native nativeGetPeerWidth(I)I
.end method

.method private static native nativeGetRecorderFrameRate(I)I
.end method

.method private static native nativeGetRecordingSurface(I)Landroid/view/Surface;
.end method

.method private static native nativeGetSurfaceHeight(Landroid/view/Surface;)I
.end method

.method private static native nativeGetSurfaceWidth(Landroid/view/Surface;)I
.end method

.method private static native nativeGetUIOrientationMode(I)I
.end method

.method private static native nativeGetVideoQualityIndication(I)I
.end method

.method private static native nativeHandleRawFrame([B)V
.end method

.method private static native nativeHaveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V
.end method

.method private static native nativeRequestRtpDataUsage(I)I
.end method

.method private static native nativeSetCameraFacing(I)V
.end method

.method private static native nativeSetCameraInfo(IILcom/qualcomm/ims/vt/ImsMedia$STREAM;)V
.end method

.method private static native nativeSetDeviceOrientation(I)V
.end method

.method private static native nativeSetLocalRenderingParameters(II)I
.end method

.method private static native nativeSetSharedDisplayParameters(II)I
.end method

.method private static native nativeSetSurface(Landroid/view/Surface;I)I
.end method

.method private static native nativeSetVideoImageBuffer([III)I
.end method

.method private static native nativesetLocalRenderingDelay(I)I
.end method

.method private notifyOnMediaDeinitialized()V
    .locals 3

    .line 589
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 591
    :try_start_0
    invoke-interface {v0}, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;->onMediaDeinitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyOnMediaDeinitialized: Error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnMediaInitialized()V
    .locals 3

    .line 599
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 601
    :try_start_0
    invoke-interface {v0}, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;->onMediaInitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyOnMediaInitialized: Error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onCameraConfigChanged(ILcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)V
    .locals 11

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Negotiated Camera values: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 1185
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v5

    .line 1186
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v6

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetFps(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v7

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object v8

    .line 1187
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result v9

    move v4, p1

    move v10, p3

    .line 1185
    invoke-interface/range {v3 .. v10}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onCameraConfigChanged(IIIILandroid/view/Surface;II)V

    .line 1188
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-ne p1, v2, :cond_0

    .line 1189
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetFps(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p1

    invoke-interface {v3, v4, p1, v10}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onUpdateRecorderFrameRate(III)V

    :cond_0
    move p1, v4

    move p3, v10

    goto :goto_0

    :cond_1
    move v4, p1

    .line 1192
    iget p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-ne p1, v2, :cond_2

    .line 1193
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_2

    .line 1194
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object p1

    .line 1195
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p3

    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p2

    .line 1194
    invoke-interface {p0, v4, p1, p3, p2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    :cond_2
    return-void
.end method

.method private onDataUsageEvent(I[J)V
    .locals 2

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDataUsageEvent mediaId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1247
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 1248
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1249
    iput-object p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 1250
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1251
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onDualVtCapabilityChanged(III)V
    .locals 2

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDualVtCapabilityChanged mediaId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1278
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 1279
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1280
    iput p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1281
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->convertToCapability(I)I

    move-result p1

    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    const/16 p1, 0xd

    .line 1282
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1283
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onDualVtIncomingCallback(III)V
    .locals 2

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDualVtIncomingCallback mediaId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1300
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 1301
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1302
    iput p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1303
    iput p3, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    const/16 p1, 0xf

    .line 1304
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1305
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onDualVtResponseCallback(IIII)V
    .locals 2

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDualVtResponseCallback mediaId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1289
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 1290
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1291
    iput p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1292
    iput p3, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    .line 1293
    iput p4, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi4:I

    const/16 p1, 0xe

    .line 1294
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1295
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private processConferenceStateCompleted(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    return-void

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->scheduleCacheMediaEvents()V

    return-void
.end method

.method private registerForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 0

    .line 1031
    const-string p0, "Registering for Media Callback Events"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1032
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V

    return-void
.end method

.method private scheduleCacheMediaEvents()V
    .locals 4

    const/4 v0, 0x1

    .line 695
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    const/16 v0, 0x64

    .line 701
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 702
    const-string v1, "persist.vendor.radio.schd.cache"

    const/16 v2, 0x8fc

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scheduling the cache with delay ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    int-to-long v1, v1

    .line 704
    invoke-virtual {p0, v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;I)V
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x7

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    .line 986
    const-string p0, ""

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    .line 980
    const-string p0, "rejected by remote"

    goto :goto_0

    .line 984
    :cond_1
    const-string p2, "invalid request"

    move v0, p0

    move-object p0, p2

    goto :goto_0

    .line 976
    :cond_2
    const-string p0, "request timed out"

    .line 989
    :goto_0
    new-instance p2, Lorg/codeaurora/ims/ImsRilException;

    invoke-direct {p2, v0, p0}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    .line 991
    invoke-static {p1, p0, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 992
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method private declared-synchronized updatePreviewParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;I)Z
    .locals 6

    monitor-enter p0

    .line 1413
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    if-eqz v0, :cond_0

    const/16 p2, 0xb0

    const/16 v0, 0x14

    const/16 v1, 0x90

    .line 1414
    invoke-static {p1, v1, p2, v0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mupdateLoopbackParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 1418
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedHeight(I)I

    move-result v1

    .line 1419
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedWidth(I)I

    move-result v2

    .line 1420
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedFPS(I)I

    move-result v3

    .line 1421
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetUIOrientationMode(I)I

    move-result v5

    .line 1424
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecordingSurface(I)Landroid/view/Surface;

    move-result-object v4

    move-object v0, p1

    .line 1425
    invoke-static/range {v0 .. v5}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mmaybeUpdatePreviewParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;IIILandroid/view/Surface;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1042
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 482
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public answerDualVtRequest(Landroid/os/Message;ZII)V
    .locals 1

    .line 952
    const-string p3, "answerDualVtRequest"

    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 953
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 p0, 0x2

    const/4 p1, 0x0

    .line 955
    invoke-static {p4, p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeDualVtAnswer(III)V

    return-void

    .line 958
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, -0x1

    if-eqz p0, :cond_1

    .line 959
    invoke-static {p4, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeDualVtAnswer(III)V

    return-void

    .line 962
    :cond_1
    const-string p0, "answerDualVtRequest rejected by telephony"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 963
    invoke-static {p4, p1, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeDualVtAnswer(III)V

    return-void
.end method

.method deInit()V
    .locals 3

    .line 571
    const-string v0, "deInit called"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    const/4 v2, 0x0

    .line 573
    invoke-static {v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Landroid/view/Surface;)V

    const/4 v2, -0x1

    .line 574
    invoke-static {v1, v2, v2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetDownscaledDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 578
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 579
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->notifyOnMediaDeinitialized()V

    .line 580
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 581
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeDeInit()V

    .line 582
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 583
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    .line 584
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 585
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    return-void
.end method

.method public dualVtRequest(Landroid/os/Message;II)V
    .locals 2

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dualVtRequest callType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 939
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x1d

    if-ne p2, p0, :cond_0

    const/4 p0, 0x2

    .line 941
    invoke-static {p3, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeDualVtRequest(II)V

    return-void

    :cond_0
    const/4 p0, -0x1

    .line 943
    invoke-static {p3, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeDualVtRequest(II)V

    return-void
.end method

.method public enableArMode(ZI)V
    .locals 2

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableArMode enableAr = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 753
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p2

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 755
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 756
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 757
    invoke-static {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetLocalRenderingParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 760
    invoke-static {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetLocalRenderingParams(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Z)V

    return-void
.end method

.method public getDownscaledHeight(I)I
    .locals 0

    .line 913
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 914
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetDownscaledHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getDownscaledWidth(I)I
    .locals 0

    .line 905
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 906
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetDownscaledWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getNegotiatedFps(I)I
    .locals 0

    .line 865
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 866
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetFps(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getNegotiatedHeight(I)I
    .locals 0

    .line 852
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 853
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getNegotiatedWidth(I)I
    .locals 0

    .line 860
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 861
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getPeerHeight(I)I
    .locals 0

    .line 889
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 890
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetPeerHeight(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getPeerWidth(I)I
    .locals 0

    .line 897
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 898
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetPeerWidth(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getRecordingSurface(I)Landroid/view/Surface;
    .locals 0

    .line 873
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 874
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getUIOrientationMode(I)I
    .locals 0

    .line 881
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 882
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetOrientationMode(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public getVideoQualityLevel(I)I
    .locals 0

    .line 921
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 922
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetVideoQualityLevel(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)I

    move-result p0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1309
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x64

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    .line 1385
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Received unknown msg id = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    return-void

    .line 1372
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1374
    :try_start_0
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1375
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1376
    iget v2, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    .line 1377
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_0

    .line 1378
    invoke-interface {p0, v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onIncomingDualVtRequest(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1382
    throw p0

    .line 1348
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1350
    :try_start_1
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1351
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1352
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    .line 1353
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi4:I

    .line 1354
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    .line 1358
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1359
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1361
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->sendErrorResponse(Landroid/os/Message;I)V

    .line 1363
    :goto_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mDualVtMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1365
    :cond_2
    const-string p0, "received response for null message, not expected"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1368
    :goto_1
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1369
    throw p0

    .line 1335
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1337
    :try_start_2
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1338
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 1339
    :goto_2
    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    .line 1340
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_4

    .line 1341
    invoke-interface {p0, v0, v2, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onDualVtSupportChanged(IZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1344
    :cond_4
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1345
    throw p0

    .line 1332
    :cond_5
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnCachedMediaEvent()V

    return-void

    .line 1319
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1321
    :try_start_3
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1322
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, [J

    .line 1323
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz p0, :cond_7

    .line 1324
    new-instance v2, Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    invoke-direct {v2, v1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;-><init>([J)V

    invoke-interface {p0, v0, v2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onDataUsageChanged(ILorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1328
    :cond_7
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_3
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1329
    throw p0

    .line 1311
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1313
    :try_start_4
    iget v0, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    iget v1, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    iget v2, p1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnMediaEvent(III)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1315
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    return-void

    :catchall_4
    move-exception p0

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 1316
    throw p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method init()I
    .locals 4

    .line 542
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 543
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeInit()I

    move-result v0

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init called error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    const/4 v2, -0x2

    if-eq v0, v2, :cond_2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    invoke-direct {p0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->registerForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V

    goto :goto_0

    .line 550
    :cond_1
    sget-object v2, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    move v1, v0

    goto :goto_1

    .line 553
    :cond_2
    const-string v0, "Dpl init is called multiple times"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    :goto_1
    if-nez v1, :cond_3

    .line 558
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->notifyOnMediaInitialized()V

    :cond_3
    return v1
.end method

.method public isArEnabled()Z
    .locals 1

    .line 777
    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isMediaInitialized()Z
    .locals 0

    .line 1431
    sget-object p0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onAbortConferenceCompleted(Z)V
    .locals 0

    .line 679
    const-string p0, "onAbortConferenceCompleted : no-op"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onConferenceParticipantStateChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 672
    :cond_0
    monitor-enter p0

    .line 673
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->scheduleCacheMediaEvents()V

    .line 674
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V
    .locals 2

    const-string v0, "onConferenceStateChanged ConferenceState: "

    .line 649
    monitor-enter p0

    .line 650
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " isSuccess: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 653
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia$1;->$SwitchMap$org$codeaurora$ims$ImsConferenceController$ConferenceState:[I

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 661
    monitor-exit p0

    return-void

    .line 658
    :cond_0
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->processConferenceStateCompleted(Z)V

    .line 659
    monitor-exit p0

    return-void

    .line 655
    :cond_1
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 656
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 663
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDualVtEvent(IILcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;)V
    .locals 2

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDualVtEvent eventId= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "DualVtCallBackInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-void

    .line 1235
    :cond_0
    iget p1, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mStatus:I

    iget p3, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mDirection:I

    invoke-direct {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtIncomingCallback(III)V

    return-void

    .line 1232
    :cond_1
    iget v0, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mStatus:I

    iget p3, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mDirection:I

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtResponseCallback(IIII)V

    return-void

    .line 1228
    :cond_2
    iget p1, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mCapability:I

    iget p3, p3, Lcom/qualcomm/ims/vt/ImsMedia$DualVtCallbackInfo;->mDirection:I

    invoke-direct {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->onDualVtCapabilityChanged(III)V

    return-void
.end method

.method public onMediaEvent(III)V
    .locals 2

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMediaEvent eventId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mShouldCacheMediaEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1206
    monitor-enter p0

    .line 1208
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1213
    :cond_0
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 1214
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 1215
    iput p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 1216
    iput p3, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    const/4 p1, 0x0

    .line 1217
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1218
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    .line 1220
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V
    .locals 0

    .line 1047
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestCallDataUsage(II)V
    .locals 0

    .line 929
    const-string p0, "requestCallDataUsage"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 930
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeRequestRtpDataUsage(I)I

    move-result p0

    .line 931
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "requestCallDataUsage: status = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void
.end method

.method public sendCvoInfo(I)V
    .locals 1

    .line 616
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sendCvoInfo orientation="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 617
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetDeviceOrientation(I)V

    return-void
.end method

.method public setCameraFacing(Z)V
    .locals 1

    .line 786
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setCameraFacing isFacingFront="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 787
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetCameraFacing(I)V

    return-void
.end method

.method public setCameraInfo(III)V
    .locals 1

    .line 794
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setCameraInfo facing="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mount="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " stream= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 795
    invoke-static {p3}, Lcom/qualcomm/ims/vt/ImsMedia;->convertStream(I)Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetCameraInfo(IILcom/qualcomm/ims/vt/ImsMedia$STREAM;)V

    return-void
.end method

.method public setLocalRenderingDelay(I)V
    .locals 1

    .line 769
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setLocalRenderingDelay="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 770
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativesetLocalRenderingDelay(I)I

    return-void
.end method

.method public setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V
    .locals 1

    .line 1036
    const-string v0, "Registering for Media Listener"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 1037
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)Z
    .locals 9

    .line 998
    sget-object p0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 999
    const-string p0, "setPreviewImage: VT lib deinitialized so ignore"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return v0

    .line 1003
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "setPreviewImage: bitmap = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p0, 0x0

    const/4 p1, -0x1

    .line 1007
    invoke-static {p0, p1, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetVideoImageBuffer([III)I

    move-result p0

    goto :goto_0

    .line 1009
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 1010
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1011
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "setPreviewImage: bitmap width = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    mul-int p0, v4, v8

    .line 1013
    new-array v2, p0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    move-object v1, p1

    .line 1015
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1016
    invoke-static {v2, v4, v8}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetVideoImageBuffer([III)I

    move-result p0

    .line 1023
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "setPreviewImage: status = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public setSharedDisplayParams(III)V
    .locals 2

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSharedDisplayParams width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 726
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p3

    .line 727
    invoke-static {p3, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetSharedDisplayDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    const/4 p1, 0x2

    .line 728
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 729
    iget-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    if-eqz p1, :cond_0

    .line 730
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->configScreenShare(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;I)V
    .locals 2

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSurface st="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 825
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    const-string p0, "setSurface: init not completed. ignore!"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void

    .line 829
    :cond_0
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p0

    .line 830
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 832
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->isSurfaceValid(Landroid/view/Surface;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 833
    const-string p0, "setSurface:  Invalid surface"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void

    .line 839
    :cond_1
    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 841
    invoke-static {v0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSurface(Landroid/view/Surface;I)I

    .line 843
    :cond_2
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;Landroid/view/Surface;)V

    .line 844
    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$mgetSurface(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;)Landroid/view/Surface;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSurface(Landroid/view/Surface;I)I

    :cond_3
    return-void
.end method

.method public stopScreenShare(I)V
    .locals 2

    const/4 v0, -0x1

    .line 740
    invoke-static {v0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSharedDisplayParameters(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 741
    :goto_0
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 742
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getImsMediaData(I)Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;

    move-result-object p1

    const/16 v0, 0xf0

    const/16 v1, 0x140

    .line 743
    invoke-static {p1, v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;->-$$Nest$msetSharedDisplayDimensions(Lcom/qualcomm/ims/vt/ImsMedia$ImsMediaData;II)V

    .line 745
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Screen Share status after stopScreenShare attempt = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    return-void
.end method
