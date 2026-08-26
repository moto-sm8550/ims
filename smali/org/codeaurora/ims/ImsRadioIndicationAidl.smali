.class public Lorg/codeaurora/ims/ImsRadioIndicationAidl;
.super Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;
.source "ImsRadioIndicationAidl.java"


# instance fields
.field private mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

.field private final mLogSuffix:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioIndication;I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 70
    iput p2, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mPhoneId:I

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SUB"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 93
    const-string p0, "af0c66861f5c5211084d7d1ee436bd8f6040768a"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V
    .locals 1

    .line 357
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->callId:I

    .line 358
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object p1

    .line 357
    invoke-interface {p0, v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallComposerInfoAvailable(ILorg/codeaurora/ims/CallComposerInfo;)V

    return-void
.end method

.method public onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V
    .locals 1

    .line 98
    const-string v0, "onCallStateChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 101
    const-string p1, "Call list is null."

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallImsArray([Lvendor/qti/hardware/radio/ims/CallInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 106
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallStateChanged(Ljava/util/List;)V

    return-void
.end method

.method public onCiWlanNotification(I)V
    .locals 1

    .line 496
    const-string v0, "onCiWlanNotification()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 497
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCiWlanNotification(I)Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onCiWlanNotification(Z)V

    return-void
.end method

.method public onConferenceCallStateCompleted()V
    .locals 1

    .line 436
    const-string v0, "onConferenceCallStateCompleted()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 437
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onConferenceCallStateCompleted()V

    return-void
.end method

.method public onEmergencyCallBackModeChanged(I)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEmergencyCallBackModeChanged() ECB mode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 170
    const-string p1, "onEmergencyCallBackModeChanged: invalid ECBM"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onEnterEmergencyCallBackMode()V

    return-void

    .line 163
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onExitEmergencyCallBackMode()V

    return-void
.end method

.method public onGeolocationInfoRequested(DD)V
    .locals 1

    .line 235
    const-string v0, "onGeolocationInfoRequested()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    new-instance v0, Lorg/codeaurora/ims/GeoLocationInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/GeoLocationInfo;-><init>(DD)V

    invoke-interface {p0, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onGeolocationInfoRequested(Lorg/codeaurora/ims/GeoLocationInfo;)V

    return-void
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V
    .locals 1

    .line 135
    const-string v0, "onHandover()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;

    move-result-object p1

    .line 137
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onHandover(Lorg/codeaurora/ims/HoInfo;)V

    return-void
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 1

    .line 241
    const-string v0, "onImsSubConfigChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 242
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object p1

    .line 243
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSubConfigChanged(Lorg/codeaurora/ims/ImsSubConfigDetails;)V

    return-void
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V
    .locals 3

    .line 383
    const-string v0, "onIncomingCallAutoRejected()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 386
    const-string p1, "onIncomingCallAutoRejected: rejectInfo is null. Returning"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 390
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onIncomingCallAutoRejected :: Call auto rejected from : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->logv(Ljava/lang/String;)V

    .line 394
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    return-void
.end method

.method public onIncomingCallAutoRejected2(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)V
    .locals 1

    .line 473
    const-string v0, "onIncomingCallAutoRejected2()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 475
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_2

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->isDcCall:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callReason:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callReason:Ljava/lang/String;

    .line 484
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    :cond_1
    const-string v0, "onIncomingCallAutoRejected2: callComposerInfo and ecnamInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 486
    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    return-void

    .line 490
    :cond_2
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object p1

    .line 491
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    return-void

    .line 476
    :cond_3
    :goto_0
    const-string p1, "onIncomingCallAutoRejected2: rejectInfo is null. Returning"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V
    .locals 1

    .line 364
    const-string v0, "onIncomingCallComposerCallAutoRejected()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 366
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_1

    .line 372
    const-string v0, "onIncomingCallComposerCallAutoRejected: callComposerInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 373
    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    return-void

    .line 377
    :cond_1
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object p1

    .line 378
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    return-void

    .line 367
    :cond_2
    :goto_0
    const-string p1, "onIncomingCallComposerCallAutoRejected: rejectInfo is null. Returning"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 1

    .line 442
    const-string v0, "onIncomingDtmfStart()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 443
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v0, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingDtmfStart(ILjava/lang/String;)V

    return-void
.end method

.method public onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 1

    .line 448
    const-string v0, "onIncomingDtmfStop()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 449
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v0, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingDtmfStop(ILjava/lang/String;)V

    return-void
.end method

.method public onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V
    .locals 1

    .line 294
    const-string v0, "onIncomingSms()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 295
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/IncomingSms;->pdu:[B

    if-eqz v0, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/IncomingSms;->format:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)Lorg/codeaurora/ims/sms/IncomingSms;

    move-result-object p1

    .line 300
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingImsSms(Lorg/codeaurora/ims/sms/IncomingSms;)V

    return-void

    .line 296
    :cond_1
    :goto_0
    const-string p1, "pdu or format is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V
    .locals 1

    .line 228
    const-string v0, "onMessageWaiting()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 229
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMessageWaitingIndication(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;

    move-result-object p1

    .line 230
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onMessageWaiting(Lorg/codeaurora/ims/Mwi;)V

    return-void
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 1

    .line 332
    const-string v0, "onModemSupportsWfcRoamingModeConfiguration()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    return-void
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 1

    .line 210
    const-string v0, "onModifyCall()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 212
    const-string p1, "onModifyCall: callModifyInfo is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 215
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCallModify(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;

    move-result-object p1

    .line 216
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onModifyCall(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method public onMultiIdentityInfoPending()V
    .locals 1

    .line 325
    const-string v0, "onMultiIdentityInfoPending()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityInfoPending()V

    return-void
.end method

.method public onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    .locals 1

    .line 317
    const-string v0, "onMultiIdentityRegistrationStatusChange()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 319
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMultiIdentityLineInfoList([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 320
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityRegistrationStatusChange(Ljava/util/List;)V

    return-void
.end method

.method public onMultiSimVoiceCapabilityChanged(I)V
    .locals 1

    .line 454
    const-string v0, "onMultiSimVoiceCapabilityChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 455
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMultiSimVoiceCapability(I)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiSimVoiceCapabilityChanged(I)V

    return-void
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V
    .locals 1

    .line 248
    const-string v0, "onParticipantStatusInfo()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 249
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toParticipantStatus(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;

    move-result-object p1

    .line 250
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onParticipantStatusInfo(Lorg/codeaurora/ims/ParticipantStatusDetails;)V

    return-void
.end method

.method public onPreAlertingCallInfoAvailable(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)V
    .locals 1

    .line 461
    const-string v0, "onPreAlertingCallInfoAvailable()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 463
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->isDcCall:Z

    if-nez v0, :cond_0

    .line 464
    const-string p1, "onPreAlertingCallInfoAvailable: callComposerInfo and ecnamInfo is null and isDcCall is false "

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    return-void

    .line 468
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toPreAlertingInfo(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)Lorg/codeaurora/ims/PreAlertingCallInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onPreAlertingCallInfoAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V

    return-void
.end method

.method public onRadioStateChanged(I)V
    .locals 1

    .line 153
    const-string v0, "onRadioStateChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 154
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRadioState(I)Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object p1

    .line 155
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    return-void
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V
    .locals 1

    .line 187
    const-string v0, "onRefreshConferenceInfo()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 189
    const-string p1, "onRefreshConferenceInfo: Conferenceinfo is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 193
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)Lorg/codeaurora/ims/ConfInfo;

    move-result-object p1

    .line 194
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshConferenceInfo(Lorg/codeaurora/ims/ConfInfo;)V

    return-void
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V
    .locals 1

    .line 199
    const-string v0, "onRefreshViceInfo ()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/ViceInfo;->viceInfoUri:[B

    if-nez v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toViceUriInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)Lorg/codeaurora/ims/ViceUriInfo;

    move-result-object p1

    .line 205
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshViceInfo(Lorg/codeaurora/ims/ViceUriInfo;)V

    return-void

    .line 201
    :cond_1
    :goto_0
    const-string p1, "onRefreshViceInfo: Viceinfo or viceinfouri is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V
    .locals 1

    .line 255
    const-string v0, "onRegistrationBlockStatus()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 256
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    move-result-object p1

    .line 258
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationBlockStatus(Lorg/codeaurora/ims/RegistrationBlockStatusInfo;)V

    return-void
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 1

    .line 128
    const-string v0, "onRegistrationChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object p1

    .line 130
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationChanged(Lorg/codeaurora/ims/ImsRegistrationInfo;)V

    return-void
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 1

    .line 399
    const-string v0, "onRetrievingGeoLocationDataStatus()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 401
    const-string p1, "onRetrievingGeoLocationDataStatus: GeoLocationDataStatus is invalid. Returning"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 404
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toGeoLocationStatus(I)I

    move-result p1

    .line 405
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRetrievingGeoLocationDataStatus(I)V

    return-void
.end method

.method public onRing()V
    .locals 1

    .line 111
    const-string v0, "onRing()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRing()V

    return-void
.end method

.method public onRingbackTone(I)V
    .locals 3

    .line 119
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRingbackTone(I)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRingbackTone() response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 122
    aget p1, p1, v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    .line 123
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRingbackTone(Z)V

    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 1

    .line 263
    const-string v0, "onRttMessageReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 264
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRttMessageReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDomainChanged(I)V
    .locals 1

    .line 416
    const-string v0, "onServiceDomainChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 418
    const-string p1, "SystemServiceDomain is invalid"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 421
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toServiceDomain(I)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDomainChanged(I)V

    return-void
.end method

.method public onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 2

    .line 143
    sget-object v0, Lorg/codeaurora/ims/ImsRadioAidl;->mRepIndLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    const-string v1, "onServiceStatusChanged()"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 146
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceStatusChanged(Ljava/util/List;)V

    .line 147
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSipDtmfReceived(Ljava/lang/String;)V
    .locals 1

    .line 410
    const-string v0, "onSipDtmfReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 411
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSipDtmfReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 1

    .line 426
    const-string v0, "onSmsCallBackModeChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 428
    const-string p1, "SmsCallBackMode is invalid"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 431
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSmsCallBackMode(I)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSmsCallBackModeChanged(I)V

    return-void
.end method

.method public onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V
    .locals 1

    .line 283
    const-string v0, "onSmsSendStatusReport()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 284
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->pdu:[B

    if-nez v0, :cond_0

    .line 285
    const-string p1, "smsStatusReport.pdu is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;

    move-result-object p1

    .line 289
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSmsStatusReport(Lorg/codeaurora/ims/sms/StatusReport;)V

    return-void
.end method

.method public onSrtpEncryptionStatusChanged(Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;)V
    .locals 1

    .line 502
    const-string v0, "onStrpStatusIndication()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 503
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v0, p1, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;->callId:I

    iget p1, p1, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;->categories:I

    invoke-interface {p0, v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSrtpEncryptionInfo(II)V

    return-void
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V
    .locals 1

    .line 221
    const-string v0, "onSuppServiceNotification()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSuppNotifyInfo(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;

    move-result-object p1

    .line 223
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSuppServiceNotification(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    return-void
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V
    .locals 1

    .line 276
    const-string v0, "onSupplementaryServiceIndication()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 277
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsSsData(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)Landroid/telephony/ims/ImsSsData;

    move-result-object p1

    .line 278
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    return-void
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V
    .locals 1

    .line 177
    const-string v0, "onTtyNotification ()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 179
    const-string p1, "onTtyNotification: ttyInfo is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget p1, p1, Lvendor/qti/hardware/radio/ims/TtyInfo;->mode:I

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toTtyMode(I)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onTtyNotification([I)V

    return-void
.end method

.method public onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 339
    const-string v0, "onUssdMessageFailed()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 341
    const-string p1, "UssMode type is invalid"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    return-void

    .line 344
    :cond_0
    const-string v0, ""

    invoke-static {p1, v0, p2}, Lorg/codeaurora/ims/StableAidl;->toUssdInfo(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object p1

    .line 345
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdMessageFailed(Lorg/codeaurora/ims/UssdInfo;)V

    return-void
.end method

.method public onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 350
    const-string v0, "onUssdReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 351
    invoke-static {p1, p2, p3}, Lorg/codeaurora/ims/StableAidl;->toUssdInfo(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object p1

    .line 352
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdReceived(Lorg/codeaurora/ims/UssdInfo;)V

    return-void
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 1

    .line 269
    const-string v0, "onVoWiFiCallQuality()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 270
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toVoWiFiQuality(I)[I

    move-result-object p1

    .line 271
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoWiFiCallQuality([I)V

    return-void
.end method

.method public onVoiceInfoChanged(I)V
    .locals 1

    .line 311
    const-string v0, "onVoiceInfoChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 312
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toVoiceInfo(I)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoiceInfoChanged(I)V

    return-void
.end method

.method public onVopsChanged(Z)V
    .locals 1

    .line 305
    const-string v0, "onVopsChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVopsChanged(Z)V

    return-void
.end method
