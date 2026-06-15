.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;
.super Landroid/os/Binder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortConference:I = 0x3a

.field static final TRANSACTION_acknowledgeSms:I = 0x2a

.field static final TRANSACTION_acknowledgeSmsReport:I = 0x2b

.field static final TRANSACTION_addParticipant:I = 0x3

.field static final TRANSACTION_answer:I = 0x5

.field static final TRANSACTION_callComposerDial:I = 0x32

.field static final TRANSACTION_cancelModifyCall:I = 0x28

.field static final TRANSACTION_cancelPendingUssd:I = 0x31

.field static final TRANSACTION_conference:I = 0xe

.field static final TRANSACTION_deflectCall:I = 0x24

.field static final TRANSACTION_dial:I = 0x2

.field static final TRANSACTION_emergencyDial:I = 0x2f

.field static final TRANSACTION_exitEmergencyCallbackMode:I = 0x14

.field static final TRANSACTION_exitSmsCallBackMode:I = 0x36

.field static final TRANSACTION_explicitCallTransfer:I = 0x20

.field static final TRANSACTION_getCallWaiting:I = 0x1d

.field static final TRANSACTION_getClip:I = 0xf

.field static final TRANSACTION_getClir:I = 0x10

.field static final TRANSACTION_getColr:I = 0x12

.field static final TRANSACTION_getConfig:I = 0xd

.field static final TRANSACTION_getImsRegistrationState:I = 0x4

.field static final TRANSACTION_getImsSubConfig:I = 0x26

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getRtpErrorStatistics:I = 0x23

.field static final TRANSACTION_getRtpStatistics:I = 0x22

.field static final TRANSACTION_getSmsFormat:I = 0x2c

.field static final TRANSACTION_hangup:I = 0x6

.field static final TRANSACTION_hold:I = 0xa

.field static final TRANSACTION_modifyCallConfirm:I = 0x1a

.field static final TRANSACTION_modifyCallInitiate:I = 0x19

.field static final TRANSACTION_queryCallForwardStatus:I = 0x1b

.field static final TRANSACTION_queryMultiSimVoiceCapability:I = 0x35

.field static final TRANSACTION_queryServiceStatus:I = 0x8

.field static final TRANSACTION_queryVirtualLineInfo:I = 0x2e

.field static final TRANSACTION_registerMultiIdentityLines:I = 0x2d

.field static final TRANSACTION_requestRegistrationChange:I = 0x7

.field static final TRANSACTION_resume:I = 0xb

.field static final TRANSACTION_sendDtmf:I = 0x15

.field static final TRANSACTION_sendGeolocationInfo:I = 0x25

.field static final TRANSACTION_sendRttMessage:I = 0x27

.field static final TRANSACTION_sendSipDtmf:I = 0x33

.field static final TRANSACTION_sendSms:I = 0x29

.field static final TRANSACTION_sendUssd:I = 0x30

.field static final TRANSACTION_sendVosActionInfo:I = 0x38

.field static final TRANSACTION_sendVosSupportStatus:I = 0x37

.field static final TRANSACTION_setCallForwardStatus:I = 0x1c

.field static final TRANSACTION_setCallWaiting:I = 0x1e

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setClir:I = 0x11

.field static final TRANSACTION_setColr:I = 0x13

.field static final TRANSACTION_setConfig:I = 0xc

.field static final TRANSACTION_setGlassesFree3dVideoCapability:I = 0x39

.field static final TRANSACTION_setMediaConfiguration:I = 0x34

.field static final TRANSACTION_setServiceStatus:I = 0x9

.field static final TRANSACTION_setSuppServiceNotification:I = 0x1f

.field static final TRANSACTION_setUiTtyMode:I = 0x18

.field static final TRANSACTION_startDtmf:I = 0x16

.field static final TRANSACTION_stopDtmf:I = 0x17

.field static final TRANSACTION_suppServiceStatus:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 218
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->markVintfStability()V

    .line 219
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadio;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 230
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadio;

    if-eqz v1, :cond_1

    .line 232
    check-cast v0, Lvendor/qti/hardware/radio/ims/IImsRadio;

    return-object v0

    .line 234
    :cond_1
    new-instance v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 479
    :pswitch_0
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 483
    :pswitch_1
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 475
    :pswitch_2
    const-string p0, "abortConference"

    return-object p0

    .line 471
    :pswitch_3
    const-string p0, "setGlassesFree3dVideoCapability"

    return-object p0

    .line 467
    :pswitch_4
    const-string p0, "sendVosActionInfo"

    return-object p0

    .line 463
    :pswitch_5
    const-string p0, "sendVosSupportStatus"

    return-object p0

    .line 459
    :pswitch_6
    const-string p0, "exitSmsCallBackMode"

    return-object p0

    .line 455
    :pswitch_7
    const-string p0, "queryMultiSimVoiceCapability"

    return-object p0

    .line 451
    :pswitch_8
    const-string p0, "setMediaConfiguration"

    return-object p0

    .line 447
    :pswitch_9
    const-string p0, "sendSipDtmf"

    return-object p0

    .line 443
    :pswitch_a
    const-string p0, "callComposerDial"

    return-object p0

    .line 439
    :pswitch_b
    const-string p0, "cancelPendingUssd"

    return-object p0

    .line 435
    :pswitch_c
    const-string p0, "sendUssd"

    return-object p0

    .line 431
    :pswitch_d
    const-string p0, "emergencyDial"

    return-object p0

    .line 427
    :pswitch_e
    const-string p0, "queryVirtualLineInfo"

    return-object p0

    .line 423
    :pswitch_f
    const-string p0, "registerMultiIdentityLines"

    return-object p0

    .line 419
    :pswitch_10
    const-string p0, "getSmsFormat"

    return-object p0

    .line 415
    :pswitch_11
    const-string p0, "acknowledgeSmsReport"

    return-object p0

    .line 411
    :pswitch_12
    const-string p0, "acknowledgeSms"

    return-object p0

    .line 407
    :pswitch_13
    const-string p0, "sendSms"

    return-object p0

    .line 403
    :pswitch_14
    const-string p0, "cancelModifyCall"

    return-object p0

    .line 399
    :pswitch_15
    const-string p0, "sendRttMessage"

    return-object p0

    .line 395
    :pswitch_16
    const-string p0, "getImsSubConfig"

    return-object p0

    .line 391
    :pswitch_17
    const-string p0, "sendGeolocationInfo"

    return-object p0

    .line 387
    :pswitch_18
    const-string p0, "deflectCall"

    return-object p0

    .line 383
    :pswitch_19
    const-string p0, "getRtpErrorStatistics"

    return-object p0

    .line 379
    :pswitch_1a
    const-string p0, "getRtpStatistics"

    return-object p0

    .line 375
    :pswitch_1b
    const-string p0, "suppServiceStatus"

    return-object p0

    .line 371
    :pswitch_1c
    const-string p0, "explicitCallTransfer"

    return-object p0

    .line 367
    :pswitch_1d
    const-string p0, "setSuppServiceNotification"

    return-object p0

    .line 363
    :pswitch_1e
    const-string p0, "setCallWaiting"

    return-object p0

    .line 359
    :pswitch_1f
    const-string p0, "getCallWaiting"

    return-object p0

    .line 355
    :pswitch_20
    const-string p0, "setCallForwardStatus"

    return-object p0

    .line 351
    :pswitch_21
    const-string p0, "queryCallForwardStatus"

    return-object p0

    .line 347
    :pswitch_22
    const-string p0, "modifyCallConfirm"

    return-object p0

    .line 343
    :pswitch_23
    const-string p0, "modifyCallInitiate"

    return-object p0

    .line 339
    :pswitch_24
    const-string p0, "setUiTtyMode"

    return-object p0

    .line 335
    :pswitch_25
    const-string p0, "stopDtmf"

    return-object p0

    .line 331
    :pswitch_26
    const-string p0, "startDtmf"

    return-object p0

    .line 327
    :pswitch_27
    const-string p0, "sendDtmf"

    return-object p0

    .line 323
    :pswitch_28
    const-string p0, "exitEmergencyCallbackMode"

    return-object p0

    .line 319
    :pswitch_29
    const-string p0, "setColr"

    return-object p0

    .line 315
    :pswitch_2a
    const-string p0, "getColr"

    return-object p0

    .line 311
    :pswitch_2b
    const-string p0, "setClir"

    return-object p0

    .line 307
    :pswitch_2c
    const-string p0, "getClir"

    return-object p0

    .line 303
    :pswitch_2d
    const-string p0, "getClip"

    return-object p0

    .line 299
    :pswitch_2e
    const-string p0, "conference"

    return-object p0

    .line 295
    :pswitch_2f
    const-string p0, "getConfig"

    return-object p0

    .line 291
    :pswitch_30
    const-string p0, "setConfig"

    return-object p0

    .line 287
    :pswitch_31
    const-string p0, "resume"

    return-object p0

    .line 283
    :pswitch_32
    const-string p0, "hold"

    return-object p0

    .line 279
    :pswitch_33
    const-string p0, "setServiceStatus"

    return-object p0

    .line 275
    :pswitch_34
    const-string p0, "queryServiceStatus"

    return-object p0

    .line 271
    :pswitch_35
    const-string p0, "requestRegistrationChange"

    return-object p0

    .line 267
    :pswitch_36
    const-string p0, "hangup"

    return-object p0

    .line 263
    :pswitch_37
    const-string p0, "answer"

    return-object p0

    .line 259
    :pswitch_38
    const-string p0, "getImsRegistrationState"

    return-object p0

    .line 255
    :pswitch_39
    const-string p0, "addParticipant"

    return-object p0

    .line 251
    :pswitch_3a
    const-string p0, "dial"

    return-object p0

    .line 247
    :pswitch_3b
    const-string p0, "setCallback"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
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

    .line 494
    invoke-static {p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 498
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 500
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 503
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1070
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 1061
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1063
    sget-object p3, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->abortConference(ILvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;)V

    goto/16 :goto_0

    .line 1051
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1054
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setGlassesFree3dVideoCapability(IZ)V

    goto/16 :goto_0

    .line 1041
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1043
    sget-object p3, Lvendor/qti/hardware/radio/ims/VosActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/VosActionInfo;

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendVosActionInfo(ILvendor/qti/hardware/radio/ims/VosActionInfo;)V

    goto/16 :goto_0

    .line 1031
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1033
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendVosSupportStatus(IZ)V

    goto/16 :goto_0

    .line 1023
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->exitSmsCallBackMode(I)V

    goto/16 :goto_0

    .line 1015
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1017
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryMultiSimVoiceCapability(I)V

    goto/16 :goto_0

    .line 1005
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1007
    sget-object p3, Lvendor/qti/hardware/radio/ims/MediaConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/MediaConfig;

    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V

    goto/16 :goto_0

    .line 995
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendSipDtmf(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 985
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 987
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V

    goto/16 :goto_0

    .line 977
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->cancelPendingUssd(I)V

    goto/16 :goto_0

    .line 967
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 957
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 959
    sget-object p3, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V

    goto/16 :goto_0

    .line 947
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 950
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryVirtualLineInfo(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 937
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 939
    sget-object p3, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    goto/16 :goto_0

    .line 929
    :pswitch_e
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object p0

    .line 930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 920
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 922
    sget-object p3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V

    goto/16 :goto_0

    .line 910
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 912
    sget-object p3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V

    goto/16 :goto_0

    .line 900
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 902
    sget-object p3, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V

    goto/16 :goto_0

    .line 890
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->cancelModifyCall(II)V

    goto/16 :goto_0

    .line 880
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 872
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 873
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getImsSubConfig(I)V

    goto/16 :goto_0

    .line 862
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 864
    sget-object p3, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V

    goto/16 :goto_0

    .line 852
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 854
    sget-object p3, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    .line 855
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V

    goto/16 :goto_0

    .line 844
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    goto/16 :goto_0

    .line 836
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getRtpStatistics(I)V

    goto/16 :goto_0

    .line 826
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 828
    sget-object p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V

    goto/16 :goto_0

    .line 816
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 818
    sget-object p3, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V

    goto/16 :goto_0

    .line 806
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setSuppServiceNotification(II)V

    goto/16 :goto_0

    .line 796
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 798
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V

    goto/16 :goto_0

    .line 786
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getCallWaiting(II)V

    goto/16 :goto_0

    .line 776
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 778
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    goto/16 :goto_0

    .line 766
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 768
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 769
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    goto/16 :goto_0

    .line 756
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 758
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    goto/16 :goto_0

    .line 746
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 748
    sget-object p3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    goto/16 :goto_0

    .line 736
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 738
    sget-object p3, Lvendor/qti/hardware/radio/ims/TtyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/TtyInfo;

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V

    goto/16 :goto_0

    .line 728
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->stopDtmf(I)V

    goto/16 :goto_0

    .line 718
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 720
    sget-object p3, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    goto/16 :goto_0

    .line 708
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 710
    sget-object p3, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    goto/16 :goto_0

    .line 700
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_0

    .line 690
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 692
    sget-object p3, Lvendor/qti/hardware/radio/ims/ColrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V

    goto/16 :goto_0

    .line 682
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getColr(I)V

    goto/16 :goto_0

    .line 672
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 674
    sget-object p3, Lvendor/qti/hardware/radio/ims/ClirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ClirInfo;

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V

    goto/16 :goto_0

    .line 664
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getClir(I)V

    goto/16 :goto_0

    .line 656
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getClip(I)V

    goto/16 :goto_0

    .line 648
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->conference(I)V

    goto/16 :goto_0

    .line 638
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 640
    sget-object p3, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    goto/16 :goto_0

    .line 628
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 630
    sget-object p3, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    goto/16 :goto_0

    .line 618
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->resume(II)V

    goto/16 :goto_0

    .line 608
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->hold(II)V

    goto/16 :goto_0

    .line 598
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 600
    sget-object p3, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    goto/16 :goto_0

    .line 590
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryServiceStatus(I)V

    goto/16 :goto_0

    .line 580
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->requestRegistrationChange(II)V

    goto :goto_0

    .line 570
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 572
    sget-object p3, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V

    goto :goto_0

    .line 560
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 562
    sget-object p3, Lvendor/qti/hardware/radio/ims/AnswerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/AnswerRequest;

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V

    goto :goto_0

    .line 552
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getImsRegistrationState(I)V

    goto :goto_0

    .line 542
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 544
    sget-object p3, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    goto :goto_0

    .line 532
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 534
    sget-object p3, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, p1, p3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    goto :goto_0

    .line 521
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object p1

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object p4

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, p1, p4}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
