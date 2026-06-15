.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;
.super Landroid/os/Binder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortConferenceResponse:I = 0x32

.field static final TRANSACTION_addParticipantResponse:I = 0x1f

.field static final TRANSACTION_answerResponse:I = 0x2

.field static final TRANSACTION_cancelModifyCallResponse:I = 0x24

.field static final TRANSACTION_cancelPendingUssdResponse:I = 0x2a

.field static final TRANSACTION_conferenceResponse:I = 0xd

.field static final TRANSACTION_deflectCallResponse:I = 0x20

.field static final TRANSACTION_dialResponse:I = 0x1

.field static final TRANSACTION_exitEmergencyCallbackModeResponse:I = 0x12

.field static final TRANSACTION_exitSmsCallBackModeResponse:I = 0x2e

.field static final TRANSACTION_explicitCallTransferResponse:I = 0x1b

.field static final TRANSACTION_getCallWaitingResponse:I = 0x1a

.field static final TRANSACTION_getClipResponse:I = 0xe

.field static final TRANSACTION_getClirResponse:I = 0xf

.field static final TRANSACTION_getColrResponse:I = 0x11

.field static final TRANSACTION_getConfigResponse:I = 0xa

.field static final TRANSACTION_getImsRegistrationStateResponse:I = 0xb

.field static final TRANSACTION_getImsSubConfigResponse:I = 0x22

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getRtpErrorStatisticsResponse:I = 0x1e

.field static final TRANSACTION_getRtpStatisticsResponse:I = 0x1d

.field static final TRANSACTION_hangupResponse:I = 0x3

.field static final TRANSACTION_holdResponse:I = 0x7

.field static final TRANSACTION_modifyCallConfirmResponse:I = 0x18

.field static final TRANSACTION_modifyCallInitiateResponse:I = 0x17

.field static final TRANSACTION_queryCallForwardStatusResponse:I = 0x19

.field static final TRANSACTION_queryMultiSimVoiceCapabilityResponse:I = 0x2d

.field static final TRANSACTION_queryServiceStatusResponse:I = 0x5

.field static final TRANSACTION_queryVirtualLineInfoResponse:I = 0x27

.field static final TRANSACTION_registerMultiIdentityLinesResponse:I = 0x26

.field static final TRANSACTION_requestRegistrationChangeResponse:I = 0x4

.field static final TRANSACTION_resumeResponse:I = 0x8

.field static final TRANSACTION_sendDtmfResponse:I = 0x13

.field static final TRANSACTION_sendGeolocationInfoResponse:I = 0x21

.field static final TRANSACTION_sendRttMessageResponse:I = 0x23

.field static final TRANSACTION_sendSipDtmfResponse:I = 0x2b

.field static final TRANSACTION_sendSmsResponse:I = 0x25

.field static final TRANSACTION_sendUssdResponse:I = 0x29

.field static final TRANSACTION_sendVosActionInfoResponse:I = 0x30

.field static final TRANSACTION_sendVosSupportStatusResponse:I = 0x2f

.field static final TRANSACTION_setCallForwardStatusResponse:I = 0x28

.field static final TRANSACTION_setClirResponse:I = 0x10

.field static final TRANSACTION_setConfigResponse:I = 0x9

.field static final TRANSACTION_setGlassesFree3dVideoCapabilityResponse:I = 0x31

.field static final TRANSACTION_setMediaConfigurationResponse:I = 0x2c

.field static final TRANSACTION_setServiceStatusResponse:I = 0x6

.field static final TRANSACTION_setSuppServiceNotificationResponse:I = 0x1c

.field static final TRANSACTION_setUiTTYModeResponse:I = 0x16

.field static final TRANSACTION_startDtmfResponse:I = 0x14

.field static final TRANSACTION_stopDtmfResponse:I = 0x15

.field static final TRANSACTION_suppServiceStatusResponse:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 192
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 193
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->markVintfStability()V

    .line 194
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    if-eqz v1, :cond_1

    .line 207
    check-cast v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    return-object v0

    .line 209
    :cond_1
    new-instance v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 422
    :pswitch_0
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 426
    :pswitch_1
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 418
    :pswitch_2
    const-string p0, "abortConferenceResponse"

    return-object p0

    .line 414
    :pswitch_3
    const-string p0, "setGlassesFree3dVideoCapabilityResponse"

    return-object p0

    .line 410
    :pswitch_4
    const-string p0, "sendVosActionInfoResponse"

    return-object p0

    .line 406
    :pswitch_5
    const-string p0, "sendVosSupportStatusResponse"

    return-object p0

    .line 402
    :pswitch_6
    const-string p0, "exitSmsCallBackModeResponse"

    return-object p0

    .line 398
    :pswitch_7
    const-string p0, "queryMultiSimVoiceCapabilityResponse"

    return-object p0

    .line 394
    :pswitch_8
    const-string p0, "setMediaConfigurationResponse"

    return-object p0

    .line 390
    :pswitch_9
    const-string p0, "sendSipDtmfResponse"

    return-object p0

    .line 386
    :pswitch_a
    const-string p0, "cancelPendingUssdResponse"

    return-object p0

    .line 382
    :pswitch_b
    const-string p0, "sendUssdResponse"

    return-object p0

    .line 378
    :pswitch_c
    const-string p0, "setCallForwardStatusResponse"

    return-object p0

    .line 374
    :pswitch_d
    const-string p0, "queryVirtualLineInfoResponse"

    return-object p0

    .line 370
    :pswitch_e
    const-string p0, "registerMultiIdentityLinesResponse"

    return-object p0

    .line 366
    :pswitch_f
    const-string p0, "sendSmsResponse"

    return-object p0

    .line 362
    :pswitch_10
    const-string p0, "cancelModifyCallResponse"

    return-object p0

    .line 358
    :pswitch_11
    const-string p0, "sendRttMessageResponse"

    return-object p0

    .line 354
    :pswitch_12
    const-string p0, "getImsSubConfigResponse"

    return-object p0

    .line 350
    :pswitch_13
    const-string p0, "sendGeolocationInfoResponse"

    return-object p0

    .line 346
    :pswitch_14
    const-string p0, "deflectCallResponse"

    return-object p0

    .line 342
    :pswitch_15
    const-string p0, "addParticipantResponse"

    return-object p0

    .line 338
    :pswitch_16
    const-string p0, "getRtpErrorStatisticsResponse"

    return-object p0

    .line 334
    :pswitch_17
    const-string p0, "getRtpStatisticsResponse"

    return-object p0

    .line 330
    :pswitch_18
    const-string p0, "setSuppServiceNotificationResponse"

    return-object p0

    .line 326
    :pswitch_19
    const-string p0, "explicitCallTransferResponse"

    return-object p0

    .line 322
    :pswitch_1a
    const-string p0, "getCallWaitingResponse"

    return-object p0

    .line 318
    :pswitch_1b
    const-string p0, "queryCallForwardStatusResponse"

    return-object p0

    .line 314
    :pswitch_1c
    const-string p0, "modifyCallConfirmResponse"

    return-object p0

    .line 310
    :pswitch_1d
    const-string p0, "modifyCallInitiateResponse"

    return-object p0

    .line 306
    :pswitch_1e
    const-string p0, "setUiTTYModeResponse"

    return-object p0

    .line 302
    :pswitch_1f
    const-string p0, "stopDtmfResponse"

    return-object p0

    .line 298
    :pswitch_20
    const-string p0, "startDtmfResponse"

    return-object p0

    .line 294
    :pswitch_21
    const-string p0, "sendDtmfResponse"

    return-object p0

    .line 290
    :pswitch_22
    const-string p0, "exitEmergencyCallbackModeResponse"

    return-object p0

    .line 286
    :pswitch_23
    const-string p0, "getColrResponse"

    return-object p0

    .line 282
    :pswitch_24
    const-string p0, "setClirResponse"

    return-object p0

    .line 278
    :pswitch_25
    const-string p0, "getClirResponse"

    return-object p0

    .line 274
    :pswitch_26
    const-string p0, "getClipResponse"

    return-object p0

    .line 270
    :pswitch_27
    const-string p0, "conferenceResponse"

    return-object p0

    .line 266
    :pswitch_28
    const-string p0, "suppServiceStatusResponse"

    return-object p0

    .line 262
    :pswitch_29
    const-string p0, "getImsRegistrationStateResponse"

    return-object p0

    .line 258
    :pswitch_2a
    const-string p0, "getConfigResponse"

    return-object p0

    .line 254
    :pswitch_2b
    const-string p0, "setConfigResponse"

    return-object p0

    .line 250
    :pswitch_2c
    const-string p0, "resumeResponse"

    return-object p0

    .line 246
    :pswitch_2d
    const-string p0, "holdResponse"

    return-object p0

    .line 242
    :pswitch_2e
    const-string p0, "setServiceStatusResponse"

    return-object p0

    .line 238
    :pswitch_2f
    const-string p0, "queryServiceStatusResponse"

    return-object p0

    .line 234
    :pswitch_30
    const-string p0, "requestRegistrationChangeResponse"

    return-object p0

    .line 230
    :pswitch_31
    const-string p0, "hangupResponse"

    return-object p0

    .line 226
    :pswitch_32
    const-string p0, "answerResponse"

    return-object p0

    .line 222
    :pswitch_33
    const-string p0, "dialResponse"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    const p0, 0xfffffe

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 437
    invoke-static {p1}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 443
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1015
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 1006
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1009
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->abortConferenceResponse(II)V

    goto/16 :goto_0

    .line 996
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setGlassesFree3dVideoCapabilityResponse(II)V

    goto/16 :goto_0

    .line 986
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendVosActionInfoResponse(II)V

    goto/16 :goto_0

    .line 976
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendVosSupportStatusResponse(II)V

    goto/16 :goto_0

    .line 966
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 968
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->exitSmsCallBackModeResponse(II)V

    goto/16 :goto_0

    .line 954
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 956
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 959
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryMultiSimVoiceCapabilityResponse(III)V

    goto/16 :goto_0

    .line 944
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 947
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setMediaConfigurationResponse(II)V

    goto/16 :goto_0

    .line 934
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 936
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendSipDtmfResponse(II)V

    goto/16 :goto_0

    .line 922
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 926
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 910
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 912
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 914
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 898
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 902
    sget-object p4, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V

    goto/16 :goto_0

    .line 886
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 888
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryVirtualLineInfoResponse(ILjava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 876
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->registerMultiIdentityLinesResponse(II)V

    goto/16 :goto_0

    .line 866
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 868
    sget-object p3, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/SmsSendResponse;

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V

    goto/16 :goto_0

    .line 856
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    goto/16 :goto_0

    .line 846
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    goto/16 :goto_0

    .line 834
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 838
    sget-object p4, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V

    goto/16 :goto_0

    .line 824
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    goto/16 :goto_0

    .line 814
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    goto/16 :goto_0

    .line 804
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    goto/16 :goto_0

    .line 792
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, p1, p3, v0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    goto/16 :goto_0

    .line 780
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, p1, p3, v0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    goto/16 :goto_0

    .line 768
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    goto/16 :goto_0

    .line 756
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 760
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 742
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 746
    sget-object p4, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .line 748
    sget-object v0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, p1, p3, p4, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 728
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 732
    sget-object p4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 734
    sget-object v0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, p1, p3, p4, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 718
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    goto/16 :goto_0

    .line 708
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    goto/16 :goto_0

    .line 698
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    goto/16 :goto_0

    .line 688
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    goto/16 :goto_0

    .line 678
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    goto/16 :goto_0

    .line 668
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    goto/16 :goto_0

    .line 658
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    goto/16 :goto_0

    .line 646
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 650
    sget-object p4, Lvendor/qti/hardware/radio/ims/ColrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V

    goto/16 :goto_0

    .line 636
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setClirResponse(II)V

    goto/16 :goto_0

    .line 622
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 626
    sget-object p4, Lvendor/qti/hardware/radio/ims/ClirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ClirInfo;

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, p1, p3, p4, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V

    goto/16 :goto_0

    .line 610
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 614
    sget-object p4, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V

    goto/16 :goto_0

    .line 598
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 602
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 586
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 590
    sget-object p4, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/SuppServiceStatus;)V

    goto/16 :goto_0

    .line 574
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 578
    sget-object p4, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getImsRegistrationStateResponse(IILvendor/qti/hardware/radio/ims/RegistrationInfo;)V

    goto/16 :goto_0

    .line 562
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 566
    sget-object p4, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    goto/16 :goto_0

    .line 550
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 554
    sget-object p4, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    goto/16 :goto_0

    .line 538
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 542
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto/16 :goto_0

    .line 526
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 530
    sget-object p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    goto :goto_0

    .line 516
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    goto :goto_0

    .line 504
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 508
    sget-object p4, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryServiceStatusResponse(II[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    goto :goto_0

    .line 494
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    goto :goto_0

    .line 484
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->hangupResponse(II)V

    goto :goto_0

    .line 474
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->answerResponse(II)V

    goto :goto_0

    .line 464
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->dialResponse(II)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
