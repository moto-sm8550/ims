.class Lorg/codeaurora/ims/ImsRadioIndicationHidl;
.super Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;
.source "ImsRadioIndicationHidl.java"


# instance fields
.field private mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioIndication;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    return-void
.end method


# virtual methods
.method public onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V
    .locals 1

    .line 586
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildCallComposerInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v0

    .line 587
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget p1, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->callId:I

    invoke-interface {p0, p1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallComposerInfoAvailable(ILorg/codeaurora/ims/CallComposerInfo;)V

    return-void
.end method

.method public onCallStateChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 134
    const-string v0, "onCallStateChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallListToV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCallStateChanged_1_1(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 128
    const-string v0, "onCallStateChanged_1_1()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV12;->migrateCallListFromV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCallStateChanged_1_2(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 121
    const-string v0, "onCallStateChanged_1_2()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateCallListFromV12(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_3(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCallStateChanged_1_3(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 114
    const-string v0, "onCallStateChanged_1_3()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->migrateCallListFromV13(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCallStateChanged_1_4(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 107
    const-string v0, "onCallStateChanged_1_4()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_5(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCallStateChanged_1_5(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 100
    const-string v0, "onCallStateChanged_1_5()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_6(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCallStateChanged_1_6(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 93
    const-string v0, "onCallStateChanged_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV17;->migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_7(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCallStateChanged_1_7(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 86
    const-string v0, "onCallStateChanged_1_7()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_8(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCallStateChanged_1_8(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 79
    const-string v0, "onCallStateChanged_1_8()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV19;->migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_9(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCallStateChanged_1_9(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 59
    const-string v0, "onCallStateChanged_1_9()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 62
    const-string p1, "Call list is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 70
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDriverCallImsFromHal(Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallStateChanged(Ljava/util/List;)V

    return-void
.end method

.method public onConferenceCallStateCompleted()V
    .locals 1

    .line 630
    const-string v0, "onConferenceCallStateCompleted()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onConferenceCallStateCompleted()V

    return-void
.end method

.method public onEnterEmergencyCallBackMode()V
    .locals 1

    .line 242
    const-string v0, "onEnterEmergencyCallBackMode()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onEnterEmergencyCallBackMode()V

    return-void
.end method

.method public onExitEmergencyCallBackMode()V
    .locals 1

    .line 248
    const-string v0, "onExitEmergencyCallBackMode()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onExitEmergencyCallBackMode()V

    return-void
.end method

.method public onGeolocationInfoRequested(DD)V
    .locals 1

    .line 343
    const-string v0, "onGeolocationInfoRequested()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-static {p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->geolocationIndicationFromHal(DD)Lorg/codeaurora/ims/GeoLocationInfo;

    move-result-object p1

    .line 346
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onGeolocationInfoRequested(Lorg/codeaurora/ims/GeoLocationInfo;)V

    return-void
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V
    .locals 1

    .line 194
    const-string v0, "onHandover()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateHandoverInfo(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onHandover_1_6(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)V

    return-void
.end method

.method public onHandover_1_6(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)V
    .locals 1

    .line 201
    const-string v0, "onHandover_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->handoverFromHal(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;

    move-result-object p1

    .line 203
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onHandover(Lorg/codeaurora/ims/HoInfo;)V

    return-void
.end method

.method public onImsSmsStatusReport(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)V
    .locals 1

    .line 140
    const-string v0, "onImsSmsStatusReport()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->pdu:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->statusReportfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;

    move-result-object p1

    .line 144
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSmsStatusReport(Lorg/codeaurora/ims/sms/StatusReport;)V

    :cond_0
    return-void
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V
    .locals 1

    .line 397
    const-string v0, "onImsSubConfigChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object p1

    .line 399
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSubConfigChanged(Lorg/codeaurora/ims/ImsSubConfigDetails;)V

    return-void
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)V
    .locals 0

    .line 391
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateAutoCallRejectionInfoFrom(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onIncomingCallAutoRejected_1_5(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)V

    return-void
.end method

.method public onIncomingCallAutoRejected_1_10(Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;)V
    .locals 1

    .line 646
    const-string v0, "onIncomingCallAutoRejected_1_10()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 649
    const-string p1, "onIncomingCallAutoRejected_1_10: rejectInfo is null. Returning"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 653
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV110;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object p1

    .line 654
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    return-void
.end method

.method public onIncomingCallAutoRejected_1_5(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)V
    .locals 0

    .line 385
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateAutoCallRejectionInfoFrom(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onIncomingCallAutoRejected_1_6(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;)V

    return-void
.end method

.method public onIncomingCallAutoRejected_1_6(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;)V
    .locals 3

    .line 369
    const-string v0, "onIncomingCallAutoRejected_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 372
    const-string p1, "onIncomingCallAutoRejected: rejectInfo is null. Returning"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 376
    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onIncomingCallAutoRejected :: Call auto rejected from : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    return-void
.end method

.method public onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V
    .locals 1

    .line 354
    const-string v0, "onIncomingCallComposerCallAutoRejected()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 356
    const-string v0, "onIncomingCallComposerCallAutoRejected: callComposerInfo is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onIncomingCallAutoRejected_1_6(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 359
    const-string p1, "onIncomingCallComposerCallAutoRejected: rejectInfo is null "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 362
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object p1

    .line 363
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    return-void
.end method

.method public onIncomingImsSms(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)V
    .locals 1

    .line 150
    const-string v0, "onIncomingImsSms()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->pdu:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->format:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->incomingSmsfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)Lorg/codeaurora/ims/sms/IncomingSms;

    move-result-object p1

    .line 154
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingImsSms(Lorg/codeaurora/ims/sms/IncomingSms;)V

    :cond_0
    return-void
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V
    .locals 1

    .line 336
    const-string v0, "onMessageWaiting()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageWaitingIndicationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;

    move-result-object p1

    .line 338
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onMessageWaiting(Lorg/codeaurora/ims/Mwi;)V

    return-void
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 2

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wfcRoamingConfigurationSupport = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    return-void
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V
    .locals 1

    .line 321
    const-string v0, "onModifyCall()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallModifyInfoToV19(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onModifyCall_1_9(Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;)V

    return-void
.end method

.method public onModifyCall_1_9(Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;)V
    .locals 1

    .line 310
    const-string v0, "onModifyCall_1_9()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 312
    const-string p1, "onModifyCall: callModifyInfo is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 315
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->callModifyFromHal(Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;

    move-result-object p1

    .line 316
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onModifyCall(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method public onMultiIdentityInfoPending()V
    .locals 1

    .line 544
    const-string v0, "onMultiIdentityInfoPending()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityInfoPending()V

    return-void
.end method

.method public onMultiIdentityRegistrationStatusChange(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;",
            ">;)V"
        }
    .end annotation

    .line 532
    const-string v0, "onMultiIdentityRegistrationStatusChange()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 534
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 536
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->fromMultiIdentityLineInfoHal(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    .line 537
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 539
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityRegistrationStatusChange(Ljava/util/List;)V

    return-void
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V
    .locals 1

    .line 404
    const-string v0, "onParticipantStatusInfo()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->participantStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;

    move-result-object p1

    .line 407
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onParticipantStatusInfo(Lorg/codeaurora/ims/ParticipantStatusDetails;)V

    return-void
.end method

.method public onPreAlertingCallInfoAvailable(Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;)V
    .locals 1

    .line 636
    const-string v0, "onPreAlertingCallInfoAvailable()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    if-nez v0, :cond_0

    .line 638
    const-string p1, "onPreAlertingCallInfoAvailable: callComposerInfo and ecnamInfo is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 641
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV110;->buildPreAlertingInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;)Lorg/codeaurora/ims/PreAlertingCallInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onPreAlertingCallInfoAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V

    return-void
.end method

.method public onRadioStateChanged(I)V
    .locals 1

    .line 222
    const-string v0, "onRadioStateChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 235
    const-string p1, "onRadioStateChanged: Invalid Radio State Change"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    sget-object p1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    return-void

    .line 229
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    sget-object p1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    return-void

    .line 226
    :cond_2
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    sget-object p1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    return-void
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V
    .locals 3

    .line 265
    const-string v0, "onRefreshConferenceInfo()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 267
    const-string p1, "onRefreshConferenceInfo: Conferenceinfo is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ConfInfo;-><init>()V

    .line 272
    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfInfoUri(Ljava/util/ArrayList;)V

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRefreshConferenceInfo: confUri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    :cond_1
    iget v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->conferenceCallState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 279
    iget v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->conferenceCallState:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->conferenceCallStateFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfCallState(I)V

    .line 282
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRefreshConferenceInfo: conferenceCallState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->conferenceCallState:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshConferenceInfo(Lorg/codeaurora/ims/ConfInfo;)V

    return-void
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V
    .locals 3

    .line 289
    const-string v0, "onRefreshViceInfo()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 290
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->viceInfoUri:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ViceUriInfo;

    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->viceInfoUri:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ViceUriInfo;-><init>(Ljava/util/ArrayList;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRefreshViceInfo: viceUri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->viceInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshViceInfo(Lorg/codeaurora/ims/ViceUriInfo;)V

    return-void

    .line 291
    :cond_1
    :goto_0
    const-string p1, "onRefreshViceInfo: Viceinfo or viceinfouri is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V
    .locals 1

    .line 414
    const-string v0, "onRegistrationBlockStatus()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-static {p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->registrationBlockStatusFromHal(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    move-result-object p1

    .line 418
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationBlockStatus(Lorg/codeaurora/ims/RegistrationBlockStatusInfo;)V

    return-void
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V
    .locals 1

    .line 180
    const-string v0, "onRegistrationChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onRegistrationChanged_1_6(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    return-void
.end method

.method public onRegistrationChanged_1_6(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V
    .locals 1

    .line 187
    const-string v0, "onRegistrationChanged_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object p1

    .line 189
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationChanged(Lorg/codeaurora/ims/ImsRegistrationInfo;)V

    return-void
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 1

    .line 592
    const-string v0, "onRetrievingGeoLocationDataStatus()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->geoLocationDataStatusFromHal(I)I

    move-result p1

    .line 594
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRetrievingGeoLocationDataStatus(I)V

    return-void
.end method

.method public onRing()V
    .locals 1

    .line 160
    const-string v0, "onRing()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRing()V

    return-void
.end method

.method public onRingbackTone(I)V
    .locals 3

    .line 168
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ringbackToneFromHal(I)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRingbackTone() response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    aget p1, p1, v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    .line 174
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRingbackTone(Z)V

    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 1

    .line 423
    const-string v0, "onRttMessageReceived()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRttMessageReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDomainChanged(I)V
    .locals 1

    .line 610
    const-string v0, "onServiceDomainChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 612
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->serviceDomainFromHal(I)I

    move-result p1

    .line 611
    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDomainChanged(I)V

    return-void
.end method

.method public onServiceStatusChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 208
    const-string v0, "onServiceStatusChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onServiceStatusChanged_1_6(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onServiceStatusChanged_1_6(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 215
    const-string v0, "onServiceStatusChanged_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->handleSrvStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 217
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceStatusChanged(Ljava/util/List;)V

    return-void
.end method

.method public onSipDtmfReceived(Ljava/lang/String;)V
    .locals 1

    .line 599
    const-string v0, "onSipDtmfReceived()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSipDtmfReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 2

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSmsCallBackModeChanged() mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 625
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->scbmStatusFromHal(I)I

    move-result p1

    .line 624
    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSmsCallBackModeChanged(I)V

    return-void
.end method

.method public onSsacStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V
    .locals 2

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSsacStatusChangedIndication:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V
    .locals 1

    .line 328
    const-string v0, "onSuppServiceNotification()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->suppServiceNotificationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;

    move-result-object p1

    .line 331
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSuppServiceNotification(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    return-void
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V
    .locals 14

    .line 442
    const-string v0, "onSupplementaryServiceIndication()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    new-instance v1, Landroid/telephony/ims/ImsSsData$Builder;

    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->serviceType:I

    .line 444
    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceTypeFromRILServiceType(I)I

    move-result v2

    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->requestType:I

    .line 445
    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->requestTypeFromRILRequestType(I)I

    move-result v3

    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    .line 446
    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->teleserviceTypeFromRILTeleserviceType(I)I

    move-result v4

    iget v5, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->serviceClass:I

    iget v6, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->result:I

    invoke-direct/range {v1 .. v6}, Landroid/telephony/ims/ImsSsData$Builder;-><init>(IIIII)V

    .line 448
    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData$Builder;->build()Landroid/telephony/ims/ImsSsData;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData;->isTypeCf()Z

    move-result v2

    const-string v3, " : "

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 453
    iget-object v5, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 454
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "cfData is null, which is unexpected for: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 457
    :cond_0
    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_0/CfData;

    .line 458
    iget-object v5, p1, Lvendor/qti/hardware/radio/ims/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    .line 460
    iget-object v6, p1, Lvendor/qti/hardware/radio/ims/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    .line 461
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    .line 462
    new-instance v7, Landroid/telephony/ims/ImsCallForwardInfo;

    iget v8, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    .line 463
    invoke-static {v8}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallForwardReasonFromSsData(I)I

    move-result v8

    iget v9, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iget v10, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    iget v11, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iget-object v12, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iget v13, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    invoke-direct/range {v7 .. v13}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    .line 462
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[SS Data] CF Info "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 470
    :cond_1
    :goto_1
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsData$Builder;->setCallForwardingInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    goto/16 :goto_6

    .line 471
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData;->isTypeIcb()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 473
    iget-object v5, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "cbNumInfo is null, which is unexpected for: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 474
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 477
    :cond_3
    iget-object v5, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_4

    .line 479
    new-instance v6, Landroid/telephony/ims/ImsSsInfo$Builder;

    iget-object v7, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    .line 480
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    iget v7, v7, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    invoke-direct {v6, v7}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 482
    iget-object v7, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    .line 483
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    .line 482
    invoke-virtual {v6, v7}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 484
    invoke-virtual {v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[SS Data] ICB Info "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 488
    :cond_4
    :goto_3
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsData$Builder;->setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    goto/16 :goto_6

    .line 496
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 497
    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->ssInfoData:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "imsSsInfo is null, which is unexpected for: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 501
    :cond_6
    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->ssInfoData:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;

    .line 502
    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 504
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    iget-object v6, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    .line 505
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 506
    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData;->isTypeClir()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 508
    iget-object v6, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    if-le v3, v7, :cond_8

    .line 510
    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    goto :goto_4

    :cond_7
    if-le v3, v7, :cond_8

    .line 513
    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 515
    :cond_8
    :goto_4
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_9
    :goto_5
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsData$Builder;->setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    .line 520
    :goto_6
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    return-void
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V
    .locals 1

    .line 254
    const-string v0, "onTtyNotification()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 256
    const-string p1, "onTtyNotification: ttyInfo is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->mode:I

    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ttyModeFromHal(I)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onTtyNotification([I)V

    return-void
.end method

.method public onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUssdMessageFailed() type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    const-string v0, ""

    invoke-static {p1, v0, p2}, Lorg/codeaurora/ims/ImsRadioUtils;->ussdInfoFromHal(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object p1

    .line 560
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdMessageFailed(Lorg/codeaurora/ims/UssdInfo;)V

    return-void
.end method

.method public onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUssdReceived() type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    invoke-static {p1, p2, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->ussdInfoFromHal(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object p1

    .line 575
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdReceived(Lorg/codeaurora/ims/UssdInfo;)V

    return-void
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 1

    .line 435
    const-string v0, "onVoWiFiCallQuality()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->voWiFiCallQualityFromHal(I)[I

    move-result-object p1

    .line 437
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoWiFiCallQuality([I)V

    return-void
.end method

.method public onVoiceInfoChanged(I)V
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVoiceInfoChanged: VoiceInfo = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->voiceInfoTypeFromHal(I)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoiceInfoChanged(I)V

    return-void
.end method

.method public onVopsChanged(Z)V
    .locals 1

    .line 525
    const-string v0, "onVopsChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVopsChanged(Z)V

    return-void
.end method

.method public onVopsStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V
    .locals 2

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVopsStatusChangedIndication:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
