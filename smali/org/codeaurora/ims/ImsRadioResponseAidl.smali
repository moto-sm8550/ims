.class public Lorg/codeaurora/ims/ImsRadioResponseAidl;
.super Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;
.source "ImsRadioResponseAidl.java"


# instance fields
.field private mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

.field private final mLogSuffix:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 50
    iput p2, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mPhoneId:I

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[SUB"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mLogSuffix:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abortConferenceResponse(II)V
    .locals 1

    .line 463
    const-string v0, "abort conference response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 464
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 465
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 464
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onAbortConferenceResponse(II)V

    return-void
.end method

.method public addParticipantResponse(II)V
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Add Participant response received. errorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 312
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 313
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 312
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onAddParticipantResponse(II)V

    return-void
.end method

.method public answerResponse(II)V
    .locals 1

    .line 76
    const-string v0, "Answer response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onAnswerResponse(II)V

    return-void
.end method

.method public cancelModifyCallResponse(II)V
    .locals 1

    .line 348
    const-string v0, "Cancel modify call response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 349
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 350
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 349
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onCancelModifyCallResponse(II)V

    return-void
.end method

.method public cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 405
    const-string v0, "Cancel pending USSD response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 406
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 407
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 408
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 407
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 171
    const-string v0, "conference response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 172
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 173
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 174
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 173
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public deflectCallResponse(II)V
    .locals 1

    .line 318
    const-string v0, "Deflect call response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 319
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 320
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 319
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onDeflectCallResponse(II)V

    return-void
.end method

.method public dialResponse(II)V
    .locals 1

    .line 70
    const-string v0, "Dial response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onDialResponse(II)V

    return-void
.end method

.method public exitEmergencyCallbackModeResponse(II)V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exit Emergency Callback response received error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 213
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 212
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onExitEmergencyCallbackModeResponse(II)V

    return-void
.end method

.method public exitSmsCallBackModeResponse(II)V
    .locals 1

    .line 435
    const-string v0, "exit SCBM"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 436
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 437
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 436
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->exitSmsCallBackModeResponse(II)V

    return-void
.end method

.method public explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 277
    const-string v0, "Explicit call transfer response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 278
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 279
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 280
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 279
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 0

    .line 268
    const-string p4, "Get call waiting response received"

    invoke-direct {p0, p4}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 269
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallWaitingArray(Lvendor/qti/hardware/radio/ims/CallWaitingInfo;)[I

    move-result-object p3

    .line 270
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 271
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 270
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetCallWaitingResponse(II[I)V

    return-void
.end method

.method public getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V
    .locals 1

    .line 180
    const-string v0, "Get clip response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 181
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppService(Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;)Lorg/codeaurora/ims/SuppService;

    move-result-object p3

    .line 182
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 183
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 182
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V

    return-void
.end method

.method public getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V
    .locals 1

    .line 189
    const-string v0, "Get clir response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 190
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toClirArray(Lvendor/qti/hardware/radio/ims/ClirInfo;)[I

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 191
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 192
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 191
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClirResponse(II[I)V

    return-void
.end method

.method public getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V
    .locals 1

    .line 203
    const-string v0, "getColr response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 204
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppService(Lvendor/qti/hardware/radio/ims/ColrInfo;)Lorg/codeaurora/ims/SuppService;

    move-result-object p3

    .line 205
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 206
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 205
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V

    return-void
.end method

.method public getConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 1

    .line 139
    const-string v0, "Get config response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 140
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;

    move-result-object p3

    .line 141
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 142
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 141
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetConfigResponse(IILjava/lang/Object;)V

    return-void
.end method

.method public getImsRegistrationStateResponse(IILvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 1

    .line 148
    const-string v0, "getImsRegistrationStateResponse received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 149
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object p3

    .line 150
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 151
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 150
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRegistrationResponse(IILorg/codeaurora/ims/ImsRegistrationInfo;)V

    return-void
.end method

.method public getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 1

    .line 333
    const-string v0, "Subconfig response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 334
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object p3

    .line 335
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 336
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 335
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 65
    const-string p0, "af0c66861f5c5211084d7d1ee436bd8f6040768a"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public getRtpErrorStatisticsResponse(IIJ)V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get Rtp Error Statistics response received packetErrorCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 305
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 306
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 305
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    return-void
.end method

.method public getRtpStatisticsResponse(IIJ)V
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get Rtp Statistics response received packetCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 296
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 297
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 296
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    return-void
.end method

.method public hangupResponse(II)V
    .locals 1

    .line 82
    const-string v0, "Hangup response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onHangupResponse(II)V

    return-void
.end method

.method public holdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 115
    const-string v0, "Hold response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 116
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 117
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 118
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 117
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onHoldResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public modifyCallConfirmResponse(II)V
    .locals 1

    .line 250
    const-string v0, "Modify call confirm response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 251
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 252
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 251
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallConfirmResponse(II)V

    return-void
.end method

.method public modifyCallInitiateResponse(II)V
    .locals 1

    .line 243
    const-string v0, "Modify call initiate response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 245
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 244
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallInitiateResponse(II)V

    return-void
.end method

.method public queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 0

    .line 258
    const-string p4, "Query call forward status response received"

    invoke-direct {p0, p4}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 260
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardTimerInfo([Lvendor/qti/hardware/radio/ims/CallForwardInfo;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    move-result-object p3

    .line 261
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 262
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 261
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V

    return-void
.end method

.method public queryMultiSimVoiceCapabilityResponse(III)V
    .locals 1

    .line 427
    const-string v0, "query multi sim voice capability."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 428
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 429
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 430
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toMultiSimVoiceCapability(I)I

    move-result p3

    .line 428
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryMultiSimVoiceCapabilityResponse(III)V

    return-void
.end method

.method public queryServiceStatusResponse(II[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 2

    .line 97
    sget-object v0, Lorg/codeaurora/ims/ImsRadioAidl;->mRepIndLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    const-string v1, "QueryServiceStatusResponse received"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 99
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Ljava/util/ArrayList;

    move-result-object p3

    .line 100
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 101
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 100
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryServiceStatusResponse(IILjava/util/List;)V

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queryVirtualLineInfoResponse(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 377
    new-instance v0, Lorg/codeaurora/ims/VirtualLineInfo;

    new-instance v1, Ljava/util/ArrayList;

    .line 378
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p2, v1}, Lorg/codeaurora/ims/VirtualLineInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 379
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "queryVirtualLineInfoResponse :: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 380
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V

    return-void
.end method

.method public registerMultiIdentityLinesResponse(II)V
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerMultiIdentityLines Response received. errorCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 370
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 371
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 370
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onRegisterMultiIdentityLinesResponse(II)V

    return-void
.end method

.method public requestRegistrationChangeResponse(II)V
    .locals 1

    .line 88
    const-string v0, "Registration change response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 90
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 89
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onRequestRegistrationChangeResponse(II)V

    return-void
.end method

.method public resumeResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 123
    const-string v0, "Resume response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 124
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 125
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 126
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 125
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onResumeResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public sendDtmfResponse(II)V
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send Dtmf response received error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendDtmfResponse(II)V

    return-void
.end method

.method public sendGeolocationInfoResponse(II)V
    .locals 1

    .line 325
    const-string v0, "Send geolocation response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 327
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 326
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendGeolocationInfoResponse(II)V

    return-void
.end method

.method public sendRttMessageResponse(II)V
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send Rtt Message response received. errorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 342
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 343
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 342
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendRttMessageResponse(II)V

    return-void
.end method

.method public sendSipDtmfResponse(II)V
    .locals 1

    .line 413
    const-string v0, "Send sip dtmf response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 414
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendSipDtmfResponse(II)V

    return-void
.end method

.method public sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V
    .locals 4

    .line 355
    const-string v0, "Ims sms response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 356
    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->smsStatus:I

    if-eqz v0, :cond_1

    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->reason:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->msgRef:I

    iget v1, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->smsStatus:I

    iget v2, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->reason:I

    iget v3, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->networkErrorCode:I

    iget p2, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->radioTech:I

    invoke-static {v0, v1, v2, v3, p2}, Lorg/codeaurora/ims/StableAidl;->toSmsResponse(IIIII)Lorg/codeaurora/ims/sms/SmsResponse;

    move-result-object p2

    .line 364
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V

    return-void

    .line 358
    :cond_1
    :goto_0
    const-string p1, "Status or reason invalid."

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    return-void
.end method

.method public sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 1

    .line 396
    const-string v0, "Send USSD response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 397
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 398
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 399
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 398
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public sendVosActionInfoResponse(II)V
    .locals 1

    .line 449
    const-string v0, "Send VOS action info response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 450
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 451
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 450
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendVosActionInfoResponse(II)V

    return-void
.end method

.method public sendVosSupportStatusResponse(II)V
    .locals 1

    .line 442
    const-string v0, "Send VOS support status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 443
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 444
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 443
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendVosSupportStatusResponse(II)V

    return-void
.end method

.method public setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V
    .locals 1

    .line 386
    const-string v0, "Set call forward status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 388
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallForwardStatusInfo(Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;

    move-result-object p3

    .line 389
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 390
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 389
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V

    return-void
.end method

.method public setClirResponse(II)V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set clir response received  error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetClirResponse(II)V

    return-void
.end method

.method public setConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 1

    .line 131
    const-string v0, "Set config response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 132
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;

    move-result-object p3

    .line 133
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 134
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 133
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetConfigResponse(IILjava/lang/Object;)V

    return-void
.end method

.method public setGlassesFree3dVideoCapabilityResponse(II)V
    .locals 1

    .line 456
    const-string v0, "Set glasses free 3d video capability response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 457
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 458
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 457
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetGlassesFree3dVideoCapabilityResponse(II)V

    return-void
.end method

.method public setMediaConfigurationResponse(II)V
    .locals 1

    .line 419
    const-string v0, "Set media configuration response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 420
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 421
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 420
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetMediaConfigurationResponse(II)V

    return-void
.end method

.method public setServiceStatusResponse(II)V
    .locals 1

    .line 108
    const-string v0, "SetServiceStatus response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 110
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 109
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetServiceStatusResponse(II)V

    return-void
.end method

.method public setSuppServiceNotificationResponse(III)V
    .locals 1

    .line 286
    const-string v0, "Set supp service notification response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 287
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 288
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 287
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetSuppServiceNotificationResponse(III)V

    return-void
.end method

.method public setUiTTYModeResponse(II)V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set Ui TTY mode response received error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 237
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 238
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 237
    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetUiTTYModeResponse(II)V

    return-void
.end method

.method public startDtmfResponse(II)V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start Dtmf response received error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 225
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onStartDtmfResponse(II)V

    return-void
.end method

.method public stopDtmfResponse(II)V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stop Dtmf response received error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 231
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onStopDtmfResponse(II)V

    return-void
.end method

.method public suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/SuppServiceStatus;)V
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Supp Service status response received status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " provisionStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " facilityType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failureCause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isPasswordRequired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->isPasswordRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 164
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppSvcResponse(Lvendor/qti/hardware/radio/ims/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;

    move-result-object p3

    .line 165
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 166
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result p2

    .line 165
    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V

    return-void
.end method
