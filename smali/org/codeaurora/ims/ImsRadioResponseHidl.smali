.class Lorg/codeaurora/ims/ImsRadioResponseHidl;
.super Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;
.source "ImsRadioResponseHidl.java"


# instance fields
.field private mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    return-void
.end method

.method private processConfigResponse(Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)Ljava/lang/Object;
    .locals 1

    .line 146
    iget-boolean p0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->hasBoolValue:Z

    if-eqz p0, :cond_0

    .line 147
    iget-boolean p0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->boolValue:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    iget p0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->intValue:I

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_1

    .line 149
    iget p0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->intValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 150
    :cond_1
    iget-object p0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 151
    iget-object p0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->stringValue:Ljava/lang/String;

    return-object p0

    .line 152
    :cond_2
    iget p0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->errorCause:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    .line 153
    iget p0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->errorCause:I

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 155
    :cond_3
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->configInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addParticipantResponse(II)V
    .locals 2

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Add Participant response received. errorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onAddParticipantResponse(II)V

    return-void
.end method

.method public answerResponse(II)V
    .locals 1

    .line 203
    const-string v0, "Got answer response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onAnswerResponse(II)V

    return-void
.end method

.method public cancelModifyCallResponse(II)V
    .locals 1

    .line 410
    const-string v0, "Got cancel modify call response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onCancelModifyCallResponse(II)V

    return-void
.end method

.method public cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 1

    .line 517
    const-string v0, "Cancel pending USSD response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 519
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 1

    .line 257
    const-string v0, "conference response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 259
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public deflectCallResponse(II)V
    .locals 1

    .line 467
    const-string v0, "Got deflect call response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onDeflectCallResponse(II)V

    return-void
.end method

.method public dialResponse(II)V
    .locals 1

    .line 56
    const-string v0, "Dial response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onDialResponse(II)V

    return-void
.end method

.method public exitEmergencyCallbackModeResponse(II)V
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got exitEmergencyCallbackModeResponse from ImsRadio error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onExitEmergencyCallbackModeResponse(II)V

    return-void
.end method

.method public explicitCallTransferResponse(II)V
    .locals 1

    .line 422
    const-string v0, "explicitCallTransferResponse()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public explicitCallTransferResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 0

    .line 428
    const-string p1, "explicitCallTransferResponse_1_8()"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2

    const/4 p5, 0x2

    if-eq p3, p5, :cond_1

    .line 318
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 320
    new-array p3, v0, [I

    .line 321
    aput v1, p3, v1

    goto :goto_0

    .line 323
    :cond_0
    new-array p3, p5, [I

    .line 324
    aput v0, p3, v1

    .line 325
    aput p4, p3, v0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 328
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetCallWaitingResponse(II[I)V

    return-void
.end method

.method public getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V
    .locals 3

    .line 265
    new-instance v0, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 267
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->clipStatus:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 269
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->clipStatus:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->clipStatusFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getClipResponse from ImsRadio. Clipstatus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    :cond_0
    iget-boolean v1, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->hasErrorDetails:Z

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getClipResponse from ImsRadio. Errorcode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "String "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object p3, p3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V

    return-void
.end method

.method public getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V
    .locals 3

    if-eqz p4, :cond_2

    const/4 p4, 0x2

    .line 290
    new-array p4, p4, [I

    .line 291
    iget v0, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 292
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    aput v2, p4, v0

    .line 294
    :cond_0
    iget v0, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 295
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    aput v1, p4, v0

    .line 297
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getClirResponse from ImsRadio. param_m - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "param_n - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 300
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClirResponse(II[I)V

    return-void
.end method

.method public getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V
    .locals 0

    .line 367
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateColrInfoFromV10(Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    move-result-object p3

    .line 368
    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    return-void
.end method

.method public getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V
    .locals 4

    .line 341
    new-instance v0, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 343
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->status:I

    .line 344
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v1

    .line 343
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setServiceClassStatus(I)V

    .line 345
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->provisionStatus:I

    .line 346
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassProvisionStatusFromHal(I)I

    move-result v1

    .line 345
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setProvisionStatus(I)V

    .line 347
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 349
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->presentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->ipPresentationFromHal(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 351
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setPresentation(I)V

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getColrResponse from ImsRadio. presentation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    :cond_0
    iget-boolean v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->hasErrorDetails:Z

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getColrResponse from ImsRadio. errorcode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object p3, p3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V

    return-void
.end method

.method public getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V
    .locals 1

    .line 130
    const-string v0, "getConfigResponse()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateConfigInfoFrom(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    move-result-object p3

    .line 134
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    move-result-object p3

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->getConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    return-void
.end method

.method public getConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V
    .locals 1

    .line 140
    const-string v0, "getConfigResponse_1_8()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->processConfigResponse(Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)Ljava/lang/Object;

    move-result-object p3

    .line 142
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetConfigResponse(IILjava/lang/Object;)V

    return-void
.end method

.method public getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V
    .locals 1

    .line 480
    const-string v0, "Received Subconfig response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object p3

    .line 482
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V

    return-void
.end method

.method public getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V
    .locals 1

    .line 216
    const-string v0, "getRegistrationResponse()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    move-result-object p3

    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->getRegistrationResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    return-void
.end method

.method public getRegistrationResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V
    .locals 1

    .line 224
    const-string v0, "getRegistrationResponse_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 227
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 229
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRegistrationResponse(IILorg/codeaurora/ims/ImsRegistrationInfo;)V

    return-void
.end method

.method public getRtpErrorStatisticsResponse(IIJ)V
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got getRtpErrorStatisticsResponse from ImsRadio packetErrorCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpErrorStatisticsResponse(IIJ)V

    return-void
.end method

.method public getRtpStatisticsResponse(IIJ)V
    .locals 2

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got getRtpStatisticsResponse from ImsRadio packetCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    return-void
.end method

.method public hangupResponse(II)V
    .locals 1

    .line 197
    const-string v0, "Got hangup response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onHangupResponse(II)V

    return-void
.end method

.method public holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 1

    .line 190
    const-string v0, "Hold response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 192
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onHoldResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public modifyCallConfirmResponse(II)V
    .locals 1

    .line 416
    const-string v0, "Got modify call confirm response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallConfirmResponse(II)V

    return-void
.end method

.method public modifyCallInitiateResponse(II)V
    .locals 1

    .line 404
    const-string v0, "Got modify call initiate response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallInitiateResponse(II)V

    return-void
.end method

.method public queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;",
            ">;",
            "Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;",
            ")V"
        }
    .end annotation

    .line 308
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCFStatusResponseFromHal(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    move-result-object p3

    .line 309
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V

    return-void
.end method

.method public queryServiceStatusResponse(IILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    const-string v0, "queryServiceStatusResponse()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p3

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->queryServiceStatusResponse_1_6(IILjava/util/ArrayList;)V

    return-void
.end method

.method public queryServiceStatusResponse_1_6(IILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 169
    const-string v0, "queryServiceStatusResponse_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->handleSrvStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p3

    .line 172
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryServiceStatusResponse(IILjava/util/List;)V

    return-void
.end method

.method public querySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received query Ssac status response from ImsRadio."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQuerySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    return-void
.end method

.method public queryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 538
    new-instance v0, Lorg/codeaurora/ims/VirtualLineInfo;

    invoke-direct {v0, p2, p3}, Lorg/codeaurora/ims/VirtualLineInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 539
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "queryVirtualLineInfoResponse :: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V

    return-void
.end method

.method public queryVoltePrefResponse(III)V
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received query VoltePref response from ImsRadio."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryVoltePrefResponse(III)V

    return-void
.end method

.method public queryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V
    .locals 2

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received query Vops status response from ImsRadio."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    return-void
.end method

.method public registerMultiIdentityLinesResponse(II)V
    .locals 2

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerMultiIdentityLines Response received. errorCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onRegisterMultiIdentityLinesResponse(II)V

    return-void
.end method

.method public requestRegistrationChangeResponse(II)V
    .locals 1

    .line 209
    const-string v0, "Got registration change response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onRequestRegistrationChangeResponse(II)V

    return-void
.end method

.method public resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 1

    .line 183
    const-string v0, "Resume response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 185
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onResumeResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public sendDtmfResponse(II)V
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got sendDtmfResponse from ImsRadio error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendDtmfResponse(II)V

    return-void
.end method

.method public sendGeolocationInfoResponse(II)V
    .locals 1

    .line 473
    const-string v0, "Received GeoLocationInfo response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendGeolocationInfoResponse(II)V

    return-void
.end method

.method public sendImsSmsResponse(IIII)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->sendImsSmsResponse_1_5(IIII)V

    return-void
.end method

.method public sendImsSmsResponse_1_5(IIII)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 89
    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->sendImsSmsResponse_1_8(IIIIII)V

    return-void
.end method

.method public sendImsSmsResponse_1_8(IIIIII)V
    .locals 0

    .line 73
    const-string p6, "Ims sms response received"

    invoke-static {p0, p6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {p2, p3, p4, p5}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->imsSmsResponsefromHidl(IIII)Lorg/codeaurora/ims/sms/SmsResponse;

    move-result-object p2

    .line 76
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V

    return-void
.end method

.method public sendRttMessageResponse(II)V
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send Rtt Message response received. errorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendRttMessageResponse(II)V

    return-void
.end method

.method public sendSipDtmfResponse(II)V
    .locals 1

    .line 502
    const-string v0, "Received Send SIP DTMF response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendSipDtmfResponse(II)V

    return-void
.end method

.method public sendUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 1

    .line 495
    const-string v0, "Send USSD response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p3

    .line 497
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public sendVosActionInfoResponse(II)V
    .locals 1

    .line 560
    const-string v0, "Send VOS action info response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendVosActionInfoResponse(II)V

    return-void
.end method

.method public sendVosSupportStatusResponse(II)V
    .locals 1

    .line 554
    const-string v0, "Send VOS support status response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendVosSupportStatusResponse(II)V

    return-void
.end method

.method public setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)V
    .locals 1

    .line 546
    const-string v0, "set call forward response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->callForwardStatusInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;

    move-result-object p3

    .line 549
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V

    return-void
.end method

.method public setClirResponse(II)V
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got setClirResponse from ImsRadio. error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetClirResponse(II)V

    return-void
.end method

.method public setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V
    .locals 1

    .line 108
    const-string v0, "setConfigResponse()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateConfigInfoFrom(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    move-result-object p3

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->setConfigResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    return-void
.end method

.method public setConfigResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V
    .locals 1

    .line 116
    const-string v0, "setConfigResponse_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->setConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    return-void
.end method

.method public setConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V
    .locals 1

    .line 123
    const-string v0, "setConfigResponse_1_8()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->processConfigResponse(Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)Ljava/lang/Object;

    move-result-object p3

    .line 125
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetConfigResponse(IILjava/lang/Object;)V

    return-void
.end method

.method public setServiceStatusResponse(II)V
    .locals 1

    .line 177
    const-string v0, "SetServiceStatus response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetServiceStatusResponse(II)V

    return-void
.end method

.method public setSuppServiceNotificationResponse(III)V
    .locals 1

    .line 435
    const-string v0, "Got set supp service notification response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetSuppServiceNotificationResponse(III)V

    return-void
.end method

.method public setUiTTYModeResponse(II)V
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got setUiTTYModeResponse from ImsRadio error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetUiTTYModeResponse(II)V

    return-void
.end method

.method public startDtmfResponse(II)V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got startDtmfResponse from ImsRadio error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onStartDtmfResponse(II)V

    return-void
.end method

.method public stopDtmfResponse(II)V
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got stopDtmfResponse from ImsRadio error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onStopDtmfResponse(II)V

    return-void
.end method

.method public suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V
    .locals 0

    .line 251
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateSuppServiceStatusFromV10(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    move-result-object p3

    .line 252
    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V

    return-void
.end method

.method public suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "suppServiceStatusResponse_1_3()  status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " provisionStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->provisionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " facilityType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failureCause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->suppSvcStatusResponseFromHal(Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;

    move-result-object p3

    .line 244
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V

    return-void
.end method

.method public updateVoltePrefResponse(II)V
    .locals 1

    .line 567
    const-string v0, "Received update VoltePref response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {p0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onUpdateVoltePrefResponse(II)V

    return-void
.end method
