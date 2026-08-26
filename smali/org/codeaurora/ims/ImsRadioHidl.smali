.class public Lorg/codeaurora/ims/ImsRadioHidl;
.super Ljava/lang/Object;
.source "ImsRadioHidl.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;,
        Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;
    }
.end annotation


# static fields
.field static final IIMS_RADIO_SERVICE_NAME:Ljava/lang/String; = "imsradio"

.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioHidl"

.field private static final STATUS_INTERROGATE:I = 0x2


# instance fields
.field private mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

.field private final mHalSync:Ljava/lang/Object;

.field private volatile mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

.field private mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

.field private mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

.field private volatile mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

.field private volatile mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

.field private volatile mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

.field private volatile mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

.field private volatile mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

.field private volatile mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

.field private volatile mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

.field private volatile mImsRadioV19:Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

.field private mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

.field private mIsDisposed:Z

.field private mPhoneId:Ljava/lang/Integer;

.field private mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

.field private mServiceName:Ljava/lang/String;

.field private final mServiceNotification:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHalSync(Lorg/codeaurora/ims/ImsRadioHidl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDisposed(Lorg/codeaurora/ims/ImsRadioHidl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIsDisposed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$minitImsRadio(Lorg/codeaurora/ims/ImsRadioHidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->initImsRadio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetServiceAndRequestList(Lorg/codeaurora/ims/ImsRadioHidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetServiceAndRequestList()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;-><init>(Lorg/codeaurora/ims/ImsRadioHidl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceNotification:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIsDisposed:Z

    .line 96
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    .line 97
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 98
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "imsradio"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceName:Ljava/lang/String;

    .line 100
    new-instance p1, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    invoke-direct {p1, p0}, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;-><init>(Lorg/codeaurora/ims/ImsRadioHidl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    .line 102
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->registerForImsRadioServiceNotification()V

    return-void
.end method

.method private fail()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 914
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "HIDL does not support this API"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    .line 203
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    .line 211
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private imsRadioV13()Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    .line 219
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    .line 227
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    .line 235
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    .line 243
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private imsRadioV17()Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    .line 251
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    .line 259
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private imsRadioV19()Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV19:Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    .line 267
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initImsRadio()V
    .locals 14

    const-string v0, "initImsRadio: imsRadioV19 availability: "

    const-string v1, "initImsRadio: imsRadioV18 availability: "

    const-string v2, "initImsRadio: imsRadioV17 availability: "

    const-string v3, "initImsRadio: imsRadioV16 availability: "

    const-string v4, "initImsRadio: imsRadioV15 availability: "

    const-string v5, "initImsRadio: imsRadioV14 availability: "

    const-string v6, "initImsRadio: imsRadioV13 availability: "

    const-string v7, "initImsRadio: imsRadioV12 availability: "

    const-string v8, "initImsRadio: imsRadioV11 availability: "

    const-string v9, "initImsRadio: imsRadioV10 availability: "

    .line 277
    :try_start_0
    iget-object v10, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceName:Ljava/lang/String;

    .line 278
    invoke-static {v10}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getService(Ljava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v10

    if-nez v10, :cond_0

    .line 280
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetHalInterfaces()V

    .line 281
    const-string v0, "initImsRadio: imsRadio is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 285
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_1

    move v13, v9

    goto :goto_0

    :cond_1
    move v13, v12

    .line 286
    :goto_0
    invoke-virtual {p0, v13}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 285
    invoke-static {p0, v11}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-static {v10}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;

    move-result-object v11

    .line 290
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_2

    move v8, v9

    goto :goto_1

    :cond_2
    move v8, v12

    :goto_1
    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-static {v10}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v8

    .line 295
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_3

    move v7, v9

    goto :goto_2

    :cond_3
    move v7, v12

    :goto_2
    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-static {v10}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-result-object v7

    .line 300
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_4

    move v6, v9

    goto :goto_3

    :cond_4
    move v6, v12

    :goto_3
    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-static {v10}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v6

    .line 305
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_5

    move v5, v9

    goto :goto_4

    :cond_5
    move v5, v12

    :goto_4
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-static {v10}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v5

    .line 310
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    move v4, v9

    goto :goto_5

    :cond_6
    move v4, v12

    :goto_5
    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-static {v10}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v4

    .line 315
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_7

    move v3, v9

    goto :goto_6

    :cond_7
    move v3, v12

    :goto_6
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-static {v10}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-result-object v3

    .line 320
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    move v2, v9

    goto :goto_7

    :cond_8
    move v2, v12

    :goto_7
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-static {v10}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v2

    .line 325
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_9

    move v1, v9

    goto :goto_8

    :cond_9
    move v1, v12

    :goto_8
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-static {v10}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    move-result-object v1

    .line 330
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    move v9, v12

    :goto_9
    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lorg/codeaurora/ims/ImsRadioResponseHidl;

    iget-object v9, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-direct {v0, v9}, Lorg/codeaurora/ims/ImsRadioResponseHidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;)V

    .line 334
    new-instance v9, Lorg/codeaurora/ims/ImsRadioIndicationHidl;

    iget-object v11, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-direct {v9, v11}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;-><init>(Lorg/codeaurora/ims/IImsRadioIndication;)V

    .line 337
    iget-object v11, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :try_start_1
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    .line 339
    iput-object v9, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    .line 340
    invoke-interface {v10, v0, v9}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 341
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    const-wide/16 v12, 0x0

    invoke-interface {v10, v0, v12, v13}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 342
    iput-object v10, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    .line 343
    iput-object v8, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    .line 344
    iput-object v7, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    .line 345
    iput-object v6, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    .line 346
    iput-object v5, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    .line 347
    iput-object v4, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    .line 348
    iput-object v3, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    .line 349
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    .line 350
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV19:Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    .line 351
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :try_start_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->notifyServiceUp()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 351
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initImsRadio: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetServiceAndRequestList()V

    return-void
.end method

.method private notifyServiceDown()V
    .locals 0

    .line 110
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDown()V

    return-void
.end method

.method private notifyServiceUp()V
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceUp()V

    return-void
.end method

.method private registerForImsRadioServiceNotification()V
    .locals 4

    .line 188
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceNotification:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;

    .line 189
    invoke-interface {v0, v1, v2, v3}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const-string v0, "Failed to register for service start notifications"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to register for service start notifications. Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetHalInterfaces()V
    .locals 2

    .line 134
    const-string v0, "resetHalInterfaces: Resetting HAL interfaces."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 142
    :try_start_1
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    .line 143
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    .line 144
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    .line 145
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    .line 146
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    .line 147
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    .line 148
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    .line 149
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    .line 150
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV19:Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    .line 151
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    .line 152
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    .line 154
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized resetServiceAndRequestList()V
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->notifyServiceDown()V

    .line 130
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetHalInterfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public abortConference(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    return-void
.end method

.method public acknowledgeSms(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSmsDeliverStatusToHidl(I)I

    move-result p3

    .line 515
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->acknowledgeSms_1_5(III)V

    return-void

    .line 519
    :cond_0
    const-string v0, "ImsRadioV15 is null. Invoking ImsRadioV12.acknowledgeSms()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->acknowledgeSms(III)V

    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSmsStatusReportStatusToHidl(I)I

    move-result p3

    .line 529
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->acknowledgeSmsReport(III)V

    return-void
.end method

.method public addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 400
    invoke-static {p2, p3, p4, v0}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    move-result-object p2

    .line 402
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 404
    invoke-interface {p3, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->addParticipant_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    goto :goto_0

    .line 406
    :cond_0
    const-string p3, "mImsRadio V1.4 is null. invoking mImsRadio.dial()"

    invoke-static {p0, p3}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p3

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    move-result-object p4

    invoke-interface {p3, p1, p4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 410
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, " addParticipant: token = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " address = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callType = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callDomain = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isConferenceUri = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "isCallPull ="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isEncrypted = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public answer(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result p2

    .line 491
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapTirPresentationToIpPresentation(I)I

    move-result p3

    .line 492
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->rttModeToHal(I)I

    move-result p4

    .line 490
    invoke-interface {p0, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->answer(IIII)V

    return-void
.end method

.method public cancelModifyCall(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->cancelModifyCall(II)V

    return-void
.end method

.method public cancelPendingUssd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->cancelPendingUssd(I)V

    return-void
.end method

.method public conference(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->conference(I)V

    return-void
.end method

.method public deflectCall(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 498
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->connIndex:I

    .line 499
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->number:Ljava/lang/String;

    .line 500
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    return-void
.end method

.method public dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move v4, p6

    move-object/from16 v5, p8

    .line 423
    invoke-static {p2, p4, p5, p6, v5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    move-result-object v8

    .line 425
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 427
    invoke-static {p2, p4, p5, p6, v5}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    move-result-object v2

    if-eqz p7, :cond_0

    .line 430
    const-string v0, "Dialing call composer call v1.6"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 432
    invoke-static/range {p7 .. p7}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildCallComposerInfoHal(Lorg/codeaurora/ims/CallComposerInfo;)Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    move-result-object v0

    .line 433
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v3

    invoke-interface {v3, p1, v2, v0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->callComposerDial(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 436
    invoke-virtual {p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyServiceCategories()I

    move-result v0

    .line 435
    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyServiceCategoryToHal(I)I

    move-result v3

    .line 438
    invoke-virtual {p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyCallRouting()I

    move-result v0

    .line 437
    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyCallRoutingToHal(I)I

    move-result v5

    .line 439
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 440
    const-string v0, "emergencyDial v1.6"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v0

    .line 442
    invoke-virtual {p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->hasKnownUserIntentEmergency()Z

    move-result v6

    .line 443
    invoke-virtual {p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->isEmergencyCallTesting()Z

    move-result v7

    move v1, p1

    .line 441
    invoke-interface/range {v0 .. v7}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->emergencyDial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;ILjava/util/ArrayList;IZZ)V

    goto :goto_0

    .line 445
    :cond_1
    const-string v0, "dial v1.6"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->dial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;)V

    :goto_0
    move-object v2, v8

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 448
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 450
    invoke-virtual {p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyServiceCategories()I

    move-result v0

    .line 449
    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyServiceCategoryToHal(I)I

    move-result v3

    .line 452
    invoke-virtual {p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyCallRouting()I

    move-result v0

    .line 451
    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyCallRoutingToHal(I)I

    move-result v5

    .line 453
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 454
    const-string v0, "emergencyDial v1.5"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v0

    .line 456
    invoke-virtual {p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->hasKnownUserIntentEmergency()Z

    move-result v6

    .line 457
    invoke-virtual {p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->isEmergencyCallTesting()Z

    move-result v7

    move v1, p1

    move-object v2, v8

    .line 455
    invoke-interface/range {v0 .. v7}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->emergencyDial(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;ILjava/util/ArrayList;IZZ)V

    goto :goto_1

    :cond_3
    move-object v2, v8

    .line 459
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 461
    const-string v3, "dial v1.4"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 462
    invoke-interface {v0, p1, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->dial_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    goto :goto_1

    .line 464
    :cond_4
    const-string v0, "dial v1.0"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 469
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dial: address = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "callType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "callDomain ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "isConferenceUri ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isCallPull ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isEncrypted ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "rttMode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 391
    :try_start_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIsDisposed:Z

    .line 392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetHalInterfaces()V

    return-void

    :catchall_0
    move-exception p0

    .line 392
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->exitEmergencyCallbackMode(I)V

    return-void
.end method

.method public exitSmsCallBackMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    return-void
.end method

.method public explicitCallTransfer(IIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    invoke-static {p2, p3, p4, p5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildExplicitCallTransferInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    move-result-object p2

    .line 641
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    return-void
.end method

.method public getCallWaiting(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getCallWaiting(II)V

    return-void
.end method

.method public getClip(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 769
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getClip(I)V

    return-void
.end method

.method public getClir(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getClir(I)V

    return-void
.end method

.method public getColr(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getColr(I)V

    return-void
.end method

.method public getConfig(IIZILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v0

    .line 678
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    move-result-object v1

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getConfig: item:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->item:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " boolValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " intValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " strValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " errorCause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 682
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;->getConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    return-void

    .line 684
    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    move-result-object p2

    .line 686
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    return-void
.end method

.method public getImsRegistrationState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getImsRegistrationState(I)V

    return-void
.end method

.method public getImsSubConfig(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getImsSubConfig(I)V

    return-void
.end method

.method public getRtpErrorStatistics(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getRtpErrorStatistics(I)V

    return-void
.end method

.method public getRtpStatistics(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getRtpStatistics(I)V

    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object p0

    invoke-interface {p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    invoke-static/range {p2 .. p7}, Lorg/codeaurora/ims/ImsRadioUtils;->buildHangupRequest(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    move-result-object p2

    .line 558
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV13()Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 560
    invoke-interface {p3, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;->hangup_1_3(ILvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)V

    return-void

    .line 562
    :cond_0
    const-string p3, "ImsRadioV13 is null. Invoking ImsRadioV10.hangup()"

    invoke-static {p0, p3}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateHangupRequestInfoFromV13(Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    return-void
.end method

.method public hold(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->hold(II)V

    return-void
.end method

.method public isAlive()Z
    .locals 0

    .line 385
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureSupported(I)Z
    .locals 3

    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    return v2

    .line 376
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    .line 374
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV17()Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-result-object p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2

    .line 367
    :pswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2

    .line 371
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2

    .line 365
    :pswitch_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2

    .line 378
    :cond_5
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV19()Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    move-result-object p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[SUB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 1

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[SUB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    .line 618
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    move-result-object p2

    .line 617
    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    return-void
.end method

.method public modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    .line 607
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    move-result-object p2

    .line 606
    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    return-void
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p5, 0x2

    const/4 v0, 0x0

    .line 762
    invoke-static {p2, p3, p4, p5, v0}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    move-result-object p2

    .line 764
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    return-void
.end method

.method public queryMultiSimVoiceCapability(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 883
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    return-void
.end method

.method public queryServiceStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryServiceStatus(I)V

    return-void
.end method

.method public querySsacStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->querySsacStatus(I)V

    return-void
.end method

.method public queryVirtualLineInfo(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V

    return-void
.end method

.method public queryVoltePref(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryVoltePref(I)V

    return-void
.end method

.method public queryVopsStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryVopsStatus(I)V

    return-void
.end method

.method public registerMultiIdentityLines(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 841
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 843
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    move-result-object v1

    .line 844
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 846
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->registerMultiIdentityLines(ILjava/util/ArrayList;)V

    return-void
.end method

.method public requestRegistrationChange(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    .line 601
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateToHal(I)I

    move-result p2

    .line 600
    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->requestRegistrationChange(II)V

    return-void
.end method

.method public resume(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->resume(II)V

    return-void
.end method

.method public sendDtmf(IIC)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    new-instance p2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {p2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 693
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 694
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    return-void
.end method

.method public sendGeolocationInfo(IDDLandroid/location/Address;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->getHidlAddressInfo(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    move-result-object v6

    .line 542
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 544
    invoke-interface/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V

    return-void

    .line 546
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    .line 547
    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateAddressToV10(Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    move-result-object p6

    .line 546
    invoke-interface/range {p0 .. p6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    return-void
.end method

.method public sendRttMessage(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendRttMessage(ILjava/lang/String;)V

    return-void
.end method

.method public sendSipDtmf(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 851
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV17()Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V

    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildImsSms(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    move-result-object p2

    .line 508
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V

    return-void
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->sendUssd(ILjava/lang/String;)V

    return-void
.end method

.method public sendVosActionInfo(ILorg/codeaurora/ims/VosActionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV19()Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    move-result-object p0

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->fromVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;->sendVosActionInfo(ILvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;)V

    return-void
.end method

.method public sendVosSupportStatus(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV19()Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;->sendVosSupportStatus(IZ)V

    return-void
.end method

.method public setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    invoke-static {p7, p8, p9, p6, p10}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    move-result-object p6

    const/4 p7, 0x1

    const p8, 0x7fffffff

    if-eq p2, p8, :cond_0

    if-eq p3, p8, :cond_0

    .line 747
    iput-boolean p7, p6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 748
    iget-object p9, p6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    invoke-static {p9, p2, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V

    :cond_0
    if-eq p4, p8, :cond_1

    if-eq p5, p8, :cond_1

    .line 752
    iput-boolean p7, p6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 753
    iget-object p2, p6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    invoke-static {p2, p4, p5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V

    .line 755
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallWaiting(III)V

    return-void
.end method

.method public setClir(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 723
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    .line 724
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    return-void
.end method

.method public setColr(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 808
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->ipPresentationToHal(I)I

    move-result p2

    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->presentation:I

    .line 809
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    return-void
.end method

.method public setConfig(IIZILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 648
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v0

    .line 650
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    move-result-object v1

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setConfig: item:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->item:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " boolValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " intValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " strValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " errorCause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 654
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;->setConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    return-void

    .line 657
    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    move-result-object p2

    .line 658
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 659
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->setConfig_1_6(ILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    return-void

    .line 662
    :cond_1
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    move-result-object p2

    .line 663
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 664
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->setConfig_1_5(ILvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)V

    return-void

    .line 666
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    .line 667
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateConfigInfoFromV15(Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    move-result-object p2

    .line 666
    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    return-void
.end method

.method public setGlassesFree3dVideoCapability(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    return-void
.end method

.method public setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 878
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    return-void
.end method

.method public setServiceStatus(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    invoke-static {p2, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildServiceStatusInfoList(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object p2

    .line 579
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->setServiceStatus_1_6(ILjava/util/ArrayList;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 581
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/codeaurora/ims/CapabilityStatus;

    .line 584
    invoke-virtual {p2}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->mapCapabilityToSrvType(I)I

    move-result v0

    .line 585
    invoke-virtual {p2}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHidlRadioTech(I)I

    move-result v1

    .line 586
    invoke-virtual {p2}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result p2

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->mapValueToServiceStatus(I)I

    move-result p2

    .line 583
    invoke-static {v0, v1, p2, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    move-result-object p2

    .line 588
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateServiceStatusInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;)Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    return-void
.end method

.method public setSuppServiceNotification(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setSuppServiceNotification(II)V

    return-void
.end method

.method public setUiTtyMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 775
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->ttyModeToHal(I)I

    move-result p2

    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->mode:I

    .line 776
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    return-void
.end method

.method public startDtmf(IIC)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    new-instance p2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {p2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 700
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 701
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    return-void
.end method

.method public stopDtmf(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->stopDtmf(I)V

    return-void
.end method

.method public suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    invoke-static {p4, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCbNumListInfo([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    move-result-object p4

    move-object p6, p0

    .line 789
    invoke-direct {p6}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 792
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->facilityTypeToHal(I)I

    move-result p3

    if-eqz p5, :cond_0

    goto :goto_0

    .line 793
    :cond_0
    const-string p5, ""

    .line 791
    :goto_0
    invoke-interface/range {p0 .. p5}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->suppServiceStatus_1_6(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;Ljava/lang/String;)V

    return-void

    .line 795
    :cond_1
    invoke-direct {p6}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object p0

    .line 796
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->facilityTypeToHal(I)I

    move-result p3

    .line 795
    invoke-interface {p0, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    return-void
.end method

.method public updateVoltePref(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->updateVoltePref(II)V

    return-void
.end method
