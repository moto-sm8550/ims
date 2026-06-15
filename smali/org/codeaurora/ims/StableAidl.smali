.class public Lorg/codeaurora/ims/StableAidl;
.super Ljava/lang/Object;
.source "StableAidl.java"


# static fields
.field private static final INVALID_CONNID:I = 0x0

.field private static TAG:Ljava/lang/String; = "StableAidl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1415
    :cond_0
    array-length v0, p0

    .line 1416
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Num of SrvUpdates = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1417
    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1419
    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 1421
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    .line 1423
    :cond_1
    sget-object v3, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v4, "Null service status in list"

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static fromAcknowledgeSms(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    .locals 1

    .line 3049
    new-instance v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;-><init>()V

    .line 3050
    iput p0, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->messageRef:I

    .line 3051
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromSmsDeliverStatus(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->smsDeliverStatus:I

    return-object v0
.end method

.method public static fromAcknowledgeSmsReport(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    .locals 1

    .line 3200
    new-instance v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;-><init>()V

    .line 3201
    iput p0, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->messageRef:I

    .line 3202
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromSmsReportStatus(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->smsReportStatus:I

    return-object v0
.end method

.method private static fromAddress(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/AddressInfo;
    .locals 0

    .line 2723
    new-instance p0, Lvendor/qti/hardware/radio/ims/AddressInfo;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/AddressInfo;-><init>()V

    .line 2724
    const-string p1, ""

    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->city:Ljava/lang/String;

    .line 2725
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->state:Ljava/lang/String;

    .line 2726
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->country:Ljava/lang/String;

    .line 2727
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2728
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2729
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->street:Ljava/lang/String;

    .line 2730
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->houseNumber:Ljava/lang/String;

    .line 2731
    const-class p1, Lorg/codeaurora/ims/StableAidl;

    if-nez p4, :cond_0

    .line 2732
    const-string p2, "Null Address!"

    invoke-static {p1, p2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 2735
    :cond_0
    invoke-virtual {p4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2737
    iput-object p2, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->city:Ljava/lang/String;

    .line 2739
    :cond_1
    invoke-virtual {p4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2741
    iput-object p2, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->state:Ljava/lang/String;

    .line 2743
    :cond_2
    invoke-virtual {p4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2745
    iput-object p2, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->country:Ljava/lang/String;

    .line 2747
    :cond_3
    invoke-virtual {p4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 2749
    iput-object p2, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2751
    :cond_4
    invoke-virtual {p4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2753
    iput-object p2, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2755
    :cond_5
    invoke-virtual {p4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 2757
    iput-object p2, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->street:Ljava/lang/String;

    .line 2759
    :cond_6
    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 2761
    iput-object p2, p0, Lvendor/qti/hardware/radio/ims/AddressInfo;->houseNumber:Ljava/lang/String;

    .line 2763
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "address="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ",houseNumber="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2764
    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2763
    invoke-static {p1, p2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static fromAnswerRequest(III)Lvendor/qti/hardware/radio/ims/AnswerRequest;
    .locals 1

    .line 1327
    new-instance v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/AnswerRequest;-><init>()V

    .line 1328
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCallType(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;->callType:I

    .line 1329
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromTirPresentation(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;->presentation:I

    .line 1330
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromRttMode(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;->mode:I

    return-object v0
.end method

.method public static fromCallComposerDialRequest(Lorg/codeaurora/ims/CallComposerInfo;Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 346
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;-><init>()V

    .line 347
    invoke-static {p1, p2, p3, p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object p1

    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 349
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCallComposerInfo(Lorg/codeaurora/ims/CallComposerInfo;)Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    return-object v0
.end method

.method private static fromCallComposerInfo(Lorg/codeaurora/ims/CallComposerInfo;)Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    .locals 2

    .line 357
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallComposerInfo;-><init>()V

    .line 360
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getPriority()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromPriority(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->priority:I

    .line 361
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 364
    new-array v1, v1, [C

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    .line 367
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromLocation(Lorg/codeaurora/ims/CallComposerInfo$Location;)Lvendor/qti/hardware/radio/ims/CallLocation;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    goto :goto_1

    .line 370
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/CallLocation;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    .line 373
    :goto_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 374
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getImageUrl()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    return-object v0

    .line 376
    :cond_2
    const-string p0, ""

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static fromCallDetails(Lorg/codeaurora/ims/CallDetails;)Lvendor/qti/hardware/radio/ims/CallDetails;
    .locals 5

    .line 391
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallDetails;-><init>()V

    const/4 v1, 0x0

    .line 394
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 395
    new-array v2, v1, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 396
    new-array v2, v1, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 397
    const-string v2, ""

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_2

    .line 403
    :cond_0
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromCallType(I)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    .line 404
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromCallDomain(I)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    .line 405
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromRttMode(I)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    .line 406
    iget-object v2, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v2, v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 407
    :goto_0
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    :goto_1
    if-ge v1, v2, :cond_2

    .line 409
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v4, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method private static fromCallDomain(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x3

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method private static fromCallFailCauseResponse(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;
    .locals 4

    .line 784
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;-><init>()V

    const/4 v1, 0x0

    .line 785
    new-array v2, v1, [B

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorInfo:[B

    .line 786
    const-string v2, ""

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 787
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->hasErrorDetails:Z

    .line 788
    new-instance v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 789
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 795
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 796
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hangupWithReason errorInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorInfo:[B

    .line 799
    :cond_1
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromImsReasonInfo(I)I

    move-result p1

    .line 800
    iput p1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->failCause:I

    .line 801
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hangupWithReason callFailCause="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1fd

    if-ne p1, v1, :cond_2

    .line 805
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorInfo:[B

    .line 807
    :cond_2
    sget-object p1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hangupWithReason MISC callFailCause, errorInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromCallForwardTimerInfo(Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;II)V
    .locals 1

    const v0, 0x7fffffff

    .line 2516
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->year:I

    .line 2517
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->month:I

    .line 2518
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->day:I

    .line 2519
    iput p1, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    .line 2520
    iput p2, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    .line 2521
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->second:I

    .line 2522
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->timezone:I

    return-void
.end method

.method public static fromCallModify(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    .locals 2

    .line 746
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallModifyInfo;-><init>()V

    .line 747
    iget v1, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callIndex:I

    .line 749
    iget-object p0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCallDetails(Lorg/codeaurora/ims/CallDetails;)Lvendor/qti/hardware/radio/ims/CallDetails;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    return-object v0
.end method

.method private static fromCallType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xb

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromCallWaiting(ZI)Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .locals 1

    .line 3077
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;-><init>()V

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 3079
    :goto_0
    iput p0, v0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceStatus:I

    .line 3080
    iput p1, v0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceClass:I

    return-object v0
.end method

.method private static fromCbNumList([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/CbNumListInfo;
    .locals 4

    .line 2599
    new-instance v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CbNumListInfo;-><init>()V

    const/4 v1, 0x1

    .line 2600
    new-array v1, v1, [Lvendor/qti/hardware/radio/ims/CbNumInfo;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    .line 2601
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    new-instance v2, Lvendor/qti/hardware/radio/ims/CbNumInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/CbNumInfo;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2602
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aget-object v1, v1, v3

    const-string v2, ""

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    .line 2604
    iput p1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->serviceClass:I

    :cond_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 2609
    :cond_1
    array-length p1, p0

    new-array p1, p1, [Lvendor/qti/hardware/radio/ims/CbNumInfo;

    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    move p1, v3

    .line 2610
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_3

    .line 2611
    new-instance v1, Lvendor/qti/hardware/radio/ims/CbNumInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/CbNumInfo;-><init>()V

    .line 2612
    iput v3, v1, Lvendor/qti/hardware/radio/ims/CbNumInfo;->status:I

    .line 2613
    aget-object v2, p0, p1

    if-eqz v2, :cond_2

    .line 2614
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    .line 2616
    :cond_2
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aput-object v1, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static fromClir(I)Lvendor/qti/hardware/radio/ims/ClirInfo;
    .locals 1

    .line 3071
    new-instance v0, Lvendor/qti/hardware/radio/ims/ClirInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ClirInfo;-><init>()V

    .line 3072
    iput p0, v0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    return-object v0
.end method

.method private static fromClirMode(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v0
.end method

.method public static fromColrValue(I)Lvendor/qti/hardware/radio/ims/ColrInfo;
    .locals 2

    .line 812
    new-instance v0, Lvendor/qti/hardware/radio/ims/ColrInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ColrInfo;-><init>()V

    .line 813
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromIpPresentation(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/ColrInfo;->presentation:I

    .line 816
    new-instance p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;-><init>()V

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 817
    iget-object p0, v0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    const-string v1, ""

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    return-object v0
.end method

.method public static fromConferenceAbortReason(I)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static fromConferenceAbortReasonInfo(I)Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;
    .locals 1

    .line 3607
    new-instance v0, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;-><init>()V

    .line 3610
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromConferenceAbortReason(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/ConferenceAbortReasonInfo;->conferenceAbortReason:I

    return-object v0
.end method

.method public static fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/Coordinate2D;
    .locals 2

    .line 3596
    new-instance v0, Lvendor/qti/hardware/radio/ims/Coordinate2D;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/Coordinate2D;-><init>()V

    .line 3598
    invoke-virtual {p0}, Lorg/codeaurora/ims/Coordinate2D;->getX()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/Coordinate2D;->x:I

    .line 3599
    invoke-virtual {p0}, Lorg/codeaurora/ims/Coordinate2D;->getY()I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/Coordinate2D;->y:I

    return-object v0
.end method

.method public static fromDeflectCall(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    .locals 1

    .line 3042
    new-instance v0, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;-><init>()V

    .line 3043
    iput p0, v0, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->connIndex:I

    .line 3044
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public static fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;
    .locals 1

    .line 292
    new-instance v0, Lvendor/qti/hardware/radio/ims/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/DialRequest;-><init>()V

    if-eqz p0, :cond_0

    .line 294
    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    goto :goto_0

    .line 296
    :cond_0
    const-string p0, ""

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    .line 299
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromClirMode(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->clirMode:I

    .line 301
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromCallDetails(Lorg/codeaurora/ims/CallDetails;)Lvendor/qti/hardware/radio/ims/CallDetails;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    .line 303
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->hasConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z

    move-result p0

    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isConferenceUri:Z

    if-eqz p2, :cond_1

    .line 305
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isCallPull:Z

    .line 307
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isEncrypted:Z

    if-eqz p2, :cond_2

    .line 310
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getMultiIdentityLineInfo()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 311
    :goto_2
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromMultiIdentityLineInfo(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 313
    invoke-static {p4}, Lorg/codeaurora/ims/StableAidl;->fromRedialInfo(Lorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/RedialInfo;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/RedialInfo;

    return-object v0
.end method

.method public static fromDtmf(IC)Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .locals 1

    .line 3064
    new-instance v0, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/DtmfInfo;-><init>()V

    .line 3065
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 3066
    iput p0, v0, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    return-object v0
.end method

.method public static fromEctInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    .locals 1

    .line 2574
    new-instance v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;-><init>()V

    .line 2575
    iput p0, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->callId:I

    .line 2576
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromEctTypeInfo(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->ectType:I

    .line 2577
    const-string p0, ""

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 2579
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    :cond_0
    if-lez p3, :cond_1

    goto :goto_0

    :cond_1
    const p3, 0x7fffffff

    .line 2581
    :goto_0
    iput p3, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->targetCallId:I

    return-object v0
.end method

.method private static fromEctTypeInfo(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private static fromEmergencyCallRouting(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static fromEmergencyDialRequest(Lorg/codeaurora/ims/EmergencyCallInfo;Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 326
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;-><init>()V

    .line 327
    invoke-static {p1, p2, p3, p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object p1

    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 330
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyServiceCategories()I

    move-result p1

    .line 329
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromEmergencyServiceCategory(I)I

    move-result p1

    iput p1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->categories:I

    .line 331
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyUrns()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->urns:[Ljava/lang/String;

    .line 332
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyCallRouting()I

    move-result p1

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromEmergencyCallRouting(I)I

    move-result p1

    iput p1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->route:I

    .line 333
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->hasKnownUserIntentEmergency()Z

    move-result p1

    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->hasKnownUserIntentEmergency:Z

    .line 334
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->isEmergencyCallTesting()Z

    move-result p0

    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->isTesting:Z

    return-object v0
.end method

.method private static fromEmergencyServiceCategory(I)I
    .locals 3

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, p0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v0, p0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v0, p0, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    and-int/lit8 v0, p0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    or-int/lit8 v1, v1, 0x10

    :cond_4
    and-int/lit8 v0, p0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_6

    or-int/lit8 p0, v1, 0x40

    return p0

    :cond_6
    return v1
.end method

.method private static fromFacility(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xc

    return p0

    :pswitch_1
    const/16 p0, 0xb

    return p0

    :pswitch_2
    const/16 p0, 0xa

    return p0

    :pswitch_3
    const/16 p0, 0x9

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_6
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_8
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static fromFeature(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromGeoLocation(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    .locals 1

    .line 3056
    new-instance v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;-><init>()V

    .line 3057
    iput-wide p0, v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lat:D

    .line 3058
    iput-wide p2, v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lon:D

    .line 3059
    invoke-static {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/StableAidl;->fromAddress(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/AddressInfo;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->addressInfo:Lvendor/qti/hardware/radio/ims/AddressInfo;

    return-object v0
.end method

.method public static fromHangup(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    .locals 1

    .line 756
    new-instance p2, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    invoke-direct {p2}, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;-><init>()V

    const v0, 0x7fffffff

    if-eqz p0, :cond_0

    .line 762
    iput p0, p2, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connIndex:I

    goto :goto_0

    .line 764
    :cond_0
    iput v0, p2, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connIndex:I

    :goto_0
    if-eqz p1, :cond_1

    .line 768
    iput-object p1, p2, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connUri:Ljava/lang/String;

    goto :goto_1

    .line 770
    :cond_1
    const-string p0, ""

    iput-object p0, p2, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 773
    :goto_1
    iput-boolean p3, p2, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->multiParty:Z

    .line 774
    iput v0, p2, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->conf_id:I

    .line 776
    invoke-static {p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromCallFailCauseResponse(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    move-result-object p0

    iput-object p0, p2, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    return-object p2
.end method

.method public static fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIII)Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .locals 10

    const/4 v9, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2433
    invoke-static/range {v0 .. v9}, Lorg/codeaurora/ims/StableAidl;->fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIIIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    move-result-object p0

    return-object p0
.end method

.method public static fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIIIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .locals 1

    .line 2447
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallForwardInfo;-><init>()V

    .line 2450
    iput p3, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    .line 2451
    iput p0, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    .line 2452
    iput p1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    .line 2453
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    .line 2454
    const-string p0, ""

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 2456
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    .line 2458
    :cond_0
    iput p4, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    .line 2459
    iput-boolean p9, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->expectMore:Z

    .line 2460
    new-instance p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;-><init>()V

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2461
    new-instance p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;-><init>()V

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2462
    iget-object p0, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-static {p0, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromCallForwardTimerInfo(Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;II)V

    .line 2463
    iget-object p0, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-static {p0, p7, p8}, Lorg/codeaurora/ims/StableAidl;->fromCallForwardTimerInfo(Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;II)V

    return-object v0
.end method

.method public static fromImsCallForwardTimerInfo(IILjava/lang/String;IIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .locals 10

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v9, p5

    .line 2439
    invoke-static/range {v0 .. v9}, Lorg/codeaurora/ims/StableAidl;->fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIIIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    move-result-object p0

    return-object p0
.end method

.method public static fromImsConfig(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ConfigInfo;
    .locals 1

    .line 877
    new-instance v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ConfigInfo;-><init>()V

    .line 878
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromImsConfigItem(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->item:I

    const/4 p0, 0x1

    .line 879
    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->hasBoolValue:Z

    .line 880
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->boolValue:Z

    .line 881
    iput p2, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    .line 882
    const-string p0, ""

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 884
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 886
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/StableAidlErrorCode;->fromImsConfigErrorCode(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    return-object v0
.end method

.method private static fromImsConfigItem(I)I
    .locals 1

    const/16 v0, 0x4e

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    const/16 p0, 0x52

    return p0

    :pswitch_2
    const/16 p0, 0x51

    return p0

    :pswitch_3
    const/16 p0, 0x50

    return p0

    :pswitch_4
    const/16 p0, 0x4f

    return p0

    :pswitch_5
    return v0

    :pswitch_6
    const/16 p0, 0x4d

    return p0

    :pswitch_7
    const/16 p0, 0x4b

    return p0

    :pswitch_8
    const/16 p0, 0x4a

    return p0

    :pswitch_9
    const/16 p0, 0x49

    return p0

    :pswitch_a
    const/16 p0, 0x48

    return p0

    :pswitch_b
    const/16 p0, 0x47

    return p0

    :pswitch_c
    const/16 p0, 0x46

    return p0

    :pswitch_d
    const/16 p0, 0x45

    return p0

    :pswitch_e
    const/16 p0, 0x44

    return p0

    :pswitch_f
    const/16 p0, 0x43

    return p0

    :pswitch_10
    const/16 p0, 0x42

    return p0

    :pswitch_11
    const/16 p0, 0x41

    return p0

    :pswitch_12
    const/16 p0, 0x40

    return p0

    :pswitch_13
    const/16 p0, 0x3f

    return p0

    :pswitch_14
    const/16 p0, 0x3e

    return p0

    :pswitch_15
    const/16 p0, 0x3d

    return p0

    :pswitch_16
    const/16 p0, 0x3c

    return p0

    :pswitch_17
    const/16 p0, 0x3b

    return p0

    :pswitch_18
    const/16 p0, 0x3a

    return p0

    :pswitch_19
    const/16 p0, 0x39

    return p0

    :pswitch_1a
    const/16 p0, 0x38

    return p0

    :pswitch_1b
    const/16 p0, 0x37

    return p0

    :pswitch_1c
    const/16 p0, 0x36

    return p0

    :pswitch_1d
    const/16 p0, 0x35

    return p0

    :pswitch_1e
    const/16 p0, 0x34

    return p0

    :pswitch_1f
    const/16 p0, 0x33

    return p0

    :pswitch_20
    const/16 p0, 0x32

    return p0

    :pswitch_21
    const/16 p0, 0x31

    return p0

    :pswitch_22
    const/16 p0, 0x30

    return p0

    :pswitch_23
    const/16 p0, 0x2f

    return p0

    :pswitch_24
    const/16 p0, 0x2e

    return p0

    :pswitch_25
    const/16 p0, 0x2d

    return p0

    :pswitch_26
    const/16 p0, 0x2c

    return p0

    :pswitch_27
    const/16 p0, 0x2b

    return p0

    :pswitch_28
    const/16 p0, 0x2a

    return p0

    :pswitch_29
    const/16 p0, 0x29

    return p0

    :pswitch_2a
    const/16 p0, 0x28

    return p0

    :pswitch_2b
    const/16 p0, 0x27

    return p0

    :pswitch_2c
    const/16 p0, 0x26

    return p0

    :pswitch_2d
    const/16 p0, 0x25

    return p0

    :pswitch_2e
    const/16 p0, 0x24

    return p0

    :pswitch_2f
    const/16 p0, 0x23

    return p0

    :pswitch_30
    const/16 p0, 0x22

    return p0

    :pswitch_31
    const/16 p0, 0x21

    return p0

    :pswitch_32
    const/16 p0, 0x20

    return p0

    :pswitch_33
    const/16 p0, 0x1f

    return p0

    :pswitch_34
    const/16 p0, 0x1e

    return p0

    :pswitch_35
    const/16 p0, 0x1d

    return p0

    :pswitch_36
    const/16 p0, 0x1c

    return p0

    :pswitch_37
    const/16 p0, 0x1b

    return p0

    :pswitch_38
    const/16 p0, 0x1a

    return p0

    :pswitch_39
    const/16 p0, 0x19

    return p0

    :pswitch_3a
    const/16 p0, 0x18

    return p0

    :pswitch_3b
    const/16 p0, 0x17

    return p0

    :pswitch_3c
    const/16 p0, 0x16

    return p0

    :pswitch_3d
    const/16 p0, 0x15

    return p0

    :pswitch_3e
    const/16 p0, 0x14

    return p0

    :pswitch_3f
    const/16 p0, 0x13

    return p0

    :pswitch_40
    const/16 p0, 0x12

    return p0

    :pswitch_41
    const/16 p0, 0x11

    return p0

    :pswitch_42
    const/16 p0, 0x10

    return p0

    :pswitch_43
    const/16 p0, 0xf

    return p0

    :pswitch_44
    const/16 p0, 0xe

    return p0

    :pswitch_45
    const/16 p0, 0xd

    return p0

    :pswitch_46
    const/16 p0, 0xc

    return p0

    :pswitch_47
    const/16 p0, 0xb

    return p0

    :pswitch_48
    const/16 p0, 0xa

    return p0

    :pswitch_49
    const/16 p0, 0x9

    return p0

    :pswitch_4a
    const/16 p0, 0x8

    return p0

    :pswitch_4b
    const/4 p0, 0x7

    return p0

    :pswitch_4c
    const/4 p0, 0x6

    return p0

    :pswitch_4d
    const/4 p0, 0x5

    return p0

    :pswitch_4e
    const/4 p0, 0x4

    return p0

    :pswitch_4f
    const/4 p0, 0x3

    return p0

    :pswitch_50
    const/4 p0, 0x2

    return p0

    :pswitch_51
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromImsMediaConfig(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Lvendor/qti/hardware/radio/ims/MediaConfig;
    .locals 2

    .line 3451
    new-instance v0, Lvendor/qti/hardware/radio/ims/MediaConfig;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/MediaConfig;-><init>()V

    .line 3452
    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, p0}, Lorg/codeaurora/ims/StableAidl;->fromSize(II)Lvendor/qti/hardware/radio/ims/Size;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/MediaConfig;->screenSize:Lvendor/qti/hardware/radio/ims/Size;

    .line 3453
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Lorg/codeaurora/ims/StableAidl;->fromSize(II)Lvendor/qti/hardware/radio/ims/Size;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxAvcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    .line 3454
    iget p0, p2, Landroid/graphics/Point;->x:I

    iget p1, p2, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Lorg/codeaurora/ims/StableAidl;->fromSize(II)Lvendor/qti/hardware/radio/ims/Size;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxHevcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    return-object v0
.end method

.method private static fromImsReasonInfo(I)I
    .locals 3

    .line 577
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imsReason= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3f9

    if-eq p0, v0, :cond_4

    const/16 v0, 0x5ed

    if-eq p0, v0, :cond_3

    const/16 v0, 0xbb9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1ff

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 624
    sget-object p0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v0, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x224

    return p0

    :pswitch_0
    const/16 p0, 0x1f8

    return p0

    :pswitch_1
    const/16 p0, 0x1f7

    return p0

    :pswitch_2
    const/16 p0, 0x1f6

    return p0

    :pswitch_3
    const/16 p0, 0x269

    return p0

    :pswitch_4
    const/16 p0, 0x268

    return p0

    :pswitch_5
    const/16 p0, 0x267

    return p0

    :pswitch_6
    const/16 p0, 0x266

    return p0

    :pswitch_7
    const/16 p0, 0x265

    return p0

    :pswitch_8
    const/16 p0, 0x264

    return p0

    :pswitch_9
    const/16 p0, 0x263

    return p0

    :pswitch_a
    const/16 p0, 0x262

    return p0

    :pswitch_b
    const/16 p0, 0x261

    return p0

    :pswitch_c
    const/16 p0, 0x260

    return p0

    :pswitch_d
    const/16 p0, 0x25f

    return p0

    :pswitch_e
    const/16 p0, 0x25e

    return p0

    :pswitch_f
    const/16 p0, 0x259

    return p0

    :cond_0
    const/16 p0, 0x25c

    return p0

    :cond_1
    const/16 p0, 0x25b

    return p0

    :cond_2
    const/16 p0, 0x26a

    return p0

    :cond_3
    const/16 p0, 0x25d

    return p0

    :cond_4
    const/16 p0, 0x25a

    return p0

    :cond_5
    return v0

    :pswitch_data_0
    .packed-switch 0x16d
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x178
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fromIpPresentation(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private static fromLocation(Lorg/codeaurora/ims/CallComposerInfo$Location;)Lvendor/qti/hardware/radio/ims/CallLocation;
    .locals 3

    .line 737
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallLocation;-><init>()V

    .line 738
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getRadius()F

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallLocation;->radius:F

    .line 739
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lvendor/qti/hardware/radio/ims/CallLocation;->latitude:D

    .line 740
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lvendor/qti/hardware/radio/ims/CallLocation;->longitude:D

    return-object v0
.end method

.method public static fromMultiIdentityLineInfo(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .locals 2

    .line 522
    new-instance v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;-><init>()V

    if-nez p0, :cond_0

    .line 525
    const-string p0, ""

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->msisdn:Ljava/lang/String;

    return-object v0

    .line 529
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->msisdn:Ljava/lang/String;

    .line 530
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineType()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->lineType:I

    .line 531
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->registrationStatus:I

    return-object v0
.end method

.method public static fromMultiIdentityLineInfoList(Ljava/util/Collection;)[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)[",
            "Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;"
        }
    .end annotation

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 539
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 540
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromMultiIdentityLineInfo(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 542
    new-array p0, p0, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    return-object p0
.end method

.method private static fromOperationType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static fromPriority(I)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private static fromRadioTech(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x17

    return p0

    :pswitch_1
    const/16 p0, 0x16

    return p0

    :pswitch_2
    const/16 p0, 0x15

    return p0

    :pswitch_3
    const/16 p0, 0x14

    return p0

    :pswitch_4
    const/16 p0, 0x13

    return p0

    :pswitch_5
    const/16 p0, 0x12

    return p0

    :pswitch_6
    const/16 p0, 0x11

    return p0

    :pswitch_7
    const/16 p0, 0x10

    return p0

    :pswitch_8
    const/16 p0, 0xf

    return p0

    :pswitch_9
    const/16 p0, 0xe

    return p0

    :pswitch_a
    const/16 p0, 0xd

    return p0

    :pswitch_b
    const/16 p0, 0xc

    return p0

    :pswitch_c
    const/16 p0, 0xb

    return p0

    :pswitch_d
    const/16 p0, 0xa

    return p0

    :pswitch_e
    const/16 p0, 0x9

    return p0

    :pswitch_f
    const/16 p0, 0x8

    return p0

    :pswitch_10
    const/4 p0, 0x7

    return p0

    :pswitch_11
    const/4 p0, 0x6

    return p0

    :pswitch_12
    const/4 p0, 0x5

    return p0

    :pswitch_13
    const/4 p0, 0x4

    return p0

    :pswitch_14
    const/4 p0, 0x3

    return p0

    :pswitch_15
    const/4 p0, 0x2

    return p0

    :pswitch_16
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

.method public static fromRedialInfo(Lorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/RedialInfo;
    .locals 2

    .line 563
    new-instance v0, Lvendor/qti/hardware/radio/ims/RedialInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/RedialInfo;-><init>()V

    const/16 v1, 0x224

    .line 565
    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailReason:I

    const/4 v1, 0x0

    .line 566
    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailRadioTech:I

    if-nez p0, :cond_0

    return-object v0

    .line 571
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailCause()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromImsReasonInfo(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailReason:I

    .line 572
    invoke-virtual {p0}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailRadioTech()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromRadioTech(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailRadioTech:I

    return-object v0
.end method

.method public static fromRegState(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static fromRttMode(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private static fromServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    .locals 1

    .line 216
    new-instance v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;-><init>()V

    .line 217
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromRadioTech(I)I

    move-result p1

    iput p1, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->networkMode:I

    .line 218
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromStatusType(I)I

    move-result p1

    iput p1, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->status:I

    .line 219
    iput p3, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->restrictCause:I

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->hasRegistration:Z

    .line 223
    new-instance p2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    invoke-direct {p2}, Lvendor/qti/hardware/radio/ims/RegistrationInfo;-><init>()V

    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 224
    iget-object p2, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    const-string p3, ""

    iput-object p3, p2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorMessage:Ljava/lang/String;

    .line 225
    iget-object p2, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    iput-object p3, p2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    .line 227
    new-instance p2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-direct {p2}, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;-><init>()V

    const/4 p3, 0x1

    .line 228
    iput-boolean p3, p2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->isValid:Z

    .line 229
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCallType(I)I

    move-result p0

    iput p0, p2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->callType:I

    .line 230
    new-array p0, p3, [Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    iput-object p0, p2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    .line 231
    iget-object p0, p2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    aput-object v0, p0, p1

    return-object p2
.end method

.method public static fromServiceStatusInfoList(Ljava/util/List;I)[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)[",
            "Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;"
        }
    .end annotation

    .line 201
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    const/4 v1, 0x0

    .line 202
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 203
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/CapabilityStatus;

    .line 205
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->mapCapabilityToSrvType(I)I

    move-result v3

    .line 206
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v4

    invoke-static {v4}, Lorg/codeaurora/ims/StableAidl;->mapRegistrationTechToRadioTech(I)I

    move-result v4

    .line 207
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->mapValueToServiceStatus(I)I

    move-result v2

    .line 204
    invoke-static {v3, v4, v2, p1}, Lorg/codeaurora/ims/StableAidl;->fromServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    move-result-object v2

    .line 209
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static fromSize(II)Lvendor/qti/hardware/radio/ims/Size;
    .locals 1

    .line 3459
    new-instance v0, Lvendor/qti/hardware/radio/ims/Size;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/Size;-><init>()V

    .line 3460
    iput p0, v0, Lvendor/qti/hardware/radio/ims/Size;->width:I

    .line 3461
    iput p1, v0, Lvendor/qti/hardware/radio/ims/Size;->height:I

    return-object v0
.end method

.method private static fromSmsDeliverStatus(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 2779
    const-class p0, Lorg/codeaurora/ims/StableAidl;

    const-string v0, "unknown deliver status"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private static fromSmsReportStatus(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method public static fromSmsRequest(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    .locals 1

    .line 163
    new-instance v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/SmsSendRequest;-><init>()V

    .line 164
    iput p0, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->messageRef:I

    .line 165
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->format:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 166
    const-string p2, ""

    :cond_0
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->smsc:Ljava/lang/String;

    .line 167
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->shallRetry:Z

    .line 168
    array-length p0, p4

    new-array p0, p0, [B

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->pdu:[B

    const/4 p0, 0x0

    .line 169
    :goto_0
    iget-object p1, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->pdu:[B

    array-length p1, p1

    if-ge p0, p1, :cond_1

    .line 170
    iget-object p1, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->pdu:[B

    aget-byte p2, p4, p0

    aput-byte p2, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static fromStatusType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public static fromSuppServiceStatus(II[Ljava/lang/String;Ljava/lang/String;IZ)Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    .locals 1

    .line 3093
    new-instance v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;-><init>()V

    .line 3094
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromOperationType(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->operationType:I

    .line 3095
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromFacility(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->facilityType:I

    .line 3096
    invoke-static {p2, p4}, Lorg/codeaurora/ims/StableAidl;->fromCbNumList([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->cbNumListInfo:Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3097
    :cond_0
    const-string p3, ""

    :goto_0
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->password:Ljava/lang/String;

    .line 3098
    iput-boolean p5, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->expectMore:Z

    return-object v0
.end method

.method private static fromTirPresentation(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public static fromTty(I)Lvendor/qti/hardware/radio/ims/TtyInfo;
    .locals 1

    .line 3085
    new-instance v0, Lvendor/qti/hardware/radio/ims/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/TtyInfo;-><init>()V

    .line 3086
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromTtyMode(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/TtyInfo;->mode:I

    const/4 p0, 0x0

    .line 3087
    new-array p0, p0, [B

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/TtyInfo;->userData:[B

    return-object v0
.end method

.method private static fromTtyMode(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public static fromVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;)Lvendor/qti/hardware/radio/ims/VosActionInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3537
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/VosActionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/VosActionInfo;-><init>()V

    .line 3539
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosMoveInfo()Lorg/codeaurora/ims/VosMoveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3540
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosMoveInfo()Lorg/codeaurora/ims/VosMoveInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromVosMoveInfo(Lorg/codeaurora/ims/VosMoveInfo;)Lvendor/qti/hardware/radio/ims/VosMoveInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/VosMoveInfo;

    .line 3543
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosTouchInfo()Lorg/codeaurora/ims/VosTouchInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3544
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosTouchInfo()Lorg/codeaurora/ims/VosTouchInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromVosTouchInfo(Lorg/codeaurora/ims/VosTouchInfo;)Lvendor/qti/hardware/radio/ims/VosTouchInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/VosTouchInfo;

    .line 3547
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosMoveInfo2()Lorg/codeaurora/ims/VosMoveInfo2;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3548
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosMoveInfo2()Lorg/codeaurora/ims/VosMoveInfo2;

    move-result-object p0

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromVosMoveInfo2(Lorg/codeaurora/ims/VosMoveInfo2;)Lvendor/qti/hardware/radio/ims/VosMoveInfo2;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/VosActionInfo;->vosMoveInfo2:Lvendor/qti/hardware/radio/ims/VosMoveInfo2;

    :cond_3
    return-object v0
.end method

.method public static fromVosMoveInfo(Lorg/codeaurora/ims/VosMoveInfo;)Lvendor/qti/hardware/radio/ims/VosMoveInfo;
    .locals 2

    .line 3556
    new-instance v0, Lvendor/qti/hardware/radio/ims/VosMoveInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/VosMoveInfo;-><init>()V

    .line 3558
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getStart()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3559
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getStart()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/Coordinate2D;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/VosMoveInfo;->start:Lvendor/qti/hardware/radio/ims/Coordinate2D;

    .line 3561
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getEnd()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3562
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getEnd()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object p0

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/Coordinate2D;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/VosMoveInfo;->end:Lvendor/qti/hardware/radio/ims/Coordinate2D;

    :cond_1
    return-object v0
.end method

.method public static fromVosMoveInfo2(Lorg/codeaurora/ims/VosMoveInfo2;)Lvendor/qti/hardware/radio/ims/VosMoveInfo2;
    .locals 3

    .line 3583
    new-instance v0, Lvendor/qti/hardware/radio/ims/VosMoveInfo2;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/VosMoveInfo2;-><init>()V

    .line 3585
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo2;->getCoordinate2D()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3586
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo2;->getCoordinate2D()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/Coordinate2D;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/VosMoveInfo2;->point:Lvendor/qti/hardware/radio/ims/Coordinate2D;

    .line 3588
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo2;->getIndex()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/VosMoveInfo2;->index:I

    .line 3589
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo2;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lvendor/qti/hardware/radio/ims/VosMoveInfo2;->timestamp:J

    .line 3590
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo2;->getDuration()I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/VosMoveInfo2;->duration:I

    return-object v0
.end method

.method public static fromVosTouchInfo(Lorg/codeaurora/ims/VosTouchInfo;)Lvendor/qti/hardware/radio/ims/VosTouchInfo;
    .locals 2

    .line 3570
    new-instance v0, Lvendor/qti/hardware/radio/ims/VosTouchInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/VosTouchInfo;-><init>()V

    .line 3572
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosTouchInfo;->getTouch()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3573
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosTouchInfo;->getTouch()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/Coordinate2D;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/VosTouchInfo;->touch:Lvendor/qti/hardware/radio/ims/Coordinate2D;

    .line 3575
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosTouchInfo;->getTouchDuration()I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/VosTouchInfo;->touchDuration:I

    return-object v0
.end method

.method private static hasConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 505
    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v2, "isConferenceUri"

    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 512
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isTirOverwriteAllowed(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 3475
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getInterfaceVersion()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 3477
    sget-object p1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to getInterfaceVersion. Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public static mapCapabilityToSrvType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 p0, 0x19

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static mapRegistrationTechToRadioTech(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x14

    return p0

    :cond_1
    const/16 p0, 0x15

    return p0

    :cond_2
    const/16 p0, 0x13

    return p0

    :cond_3
    const/16 p0, 0xe

    return p0
.end method

.method public static mapValueToServiceStatus(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private static toBlockReason(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0
.end method

.method public static toBlockReasonDetails(Lvendor/qti/hardware/radio/ims/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    .locals 3

    .line 1850
    new-instance v0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;-><init>()V

    .line 1852
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReasonType:I

    if-eqz v1, :cond_0

    .line 1853
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReasonType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRegFailureReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReasonType(I)V

    .line 1857
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReason:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1858
    iget p0, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReason:I

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReason(I)V

    :cond_1
    return-object v0
.end method

.method private static toBlockStatus(Lvendor/qti/hardware/radio/ims/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1822
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/BlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockStatusInfo;-><init>()V

    .line 1824
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    if-eqz v1, :cond_1

    .line 1825
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toBlockReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReason(I)V

    .line 1828
    :cond_1
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReasonDetails:Lvendor/qti/hardware/radio/ims/BlockReasonDetails;

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toBlockReasonDetails(Lvendor/qti/hardware/radio/ims/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/BlockStatusInfo;->setReasonDetails(Lorg/codeaurora/ims/BlockReasonDetailsInfo;)V

    return-object v0
.end method

.method public static toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2008
    :cond_0
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->priority:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toPriority(I)I

    move-result v2

    .line 2009
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    array-length v0, v0

    const-string v1, ""

    if-lez v0, :cond_1

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 2010
    :goto_0
    sget-object v0, Lorg/codeaurora/ims/CallComposerInfo$Location;->UNKNOWN:Lorg/codeaurora/ims/CallComposerInfo$Location;

    .line 2011
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->organization:[C

    if-eqz v4, :cond_2

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->organization:[C

    array-length v4, v4

    if-lez v4, :cond_2

    .line 2012
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->organization:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v6, v1

    .line 2013
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/CallLocation;->radius:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    .line 2014
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toLocation(Lvendor/qti/hardware/radio/ims/CallLocation;)Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v0

    :cond_3
    move-object v5, v0

    .line 2016
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2018
    new-instance v1, Lorg/codeaurora/ims/CallComposerInfo;

    invoke-direct/range {v1 .. v6}, Lorg/codeaurora/ims/CallComposerInfo;-><init>(ILjava/lang/String;Landroid/net/Uri;Lorg/codeaurora/ims/CallComposerInfo$Location;Ljava/lang/String;)V

    return-object v1
.end method

.method public static toCallDetails(Lvendor/qti/hardware/radio/ims/CallDetails;)Lorg/codeaurora/ims/CallDetails;
    .locals 5

    .line 1690
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    .line 1692
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 1694
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    if-eqz v1, :cond_0

    .line 1695
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallDomain(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1698
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1699
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallSubstateConstants(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 1703
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    if-eq v1, v2, :cond_2

    .line 1704
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 1707
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1708
    :goto_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1709
    iget-object v3, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1712
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 1713
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 1715
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    if-eq v1, v2, :cond_4

    .line 1716
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 1719
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    if-eqz v1, :cond_5

    .line 1720
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRttMode(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 1723
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1724
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 1727
    :cond_6
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isVosSupported:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CallDetails;->setVosSupport(Z)V

    .line 1729
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isVisualizedVoiceCall:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CallDetails;->setVisualizedVoiceCall(Z)V

    .line 1731
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isCrbtCall:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CallDetails;->setCrbtCall(Z)V

    .line 1733
    iget p0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->threeDimensionalVideoType:I

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/CallDetails;->setThreeDimensionalVideoType(I)V

    .line 1735
    sget-object p0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call Details = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static toCallDomain(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/16 p0, 0xb

    return p0
.end method

.method private static toCallForwardStatus([Lvendor/qti/hardware/radio/ims/CallForwardStatus;)[Lorg/codeaurora/ims/CallForwardStatus;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2550
    :cond_0
    array-length v0, p0

    .line 2551
    new-array v1, v0, [Lorg/codeaurora/ims/CallForwardStatus;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2554
    aget-object v3, p0, v2

    .line 2555
    new-instance v4, Lorg/codeaurora/ims/CallForwardStatus;

    iget v5, v3, Lvendor/qti/hardware/radio/ims/CallForwardStatus;->reason:I

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardStatus;->status:I

    invoke-static {v6}, Lorg/codeaurora/ims/StableAidl;->toCfStatus(I)I

    move-result v6

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/CallForwardStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 2556
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lorg/codeaurora/ims/CallForwardStatus;-><init>(IILandroid/telephony/ims/ImsReasonInfo;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static toCallForwardStatusInfo(Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;
    .locals 2

    .line 2527
    new-instance v0, Lorg/codeaurora/ims/CallForwardStatusInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->status:[Lvendor/qti/hardware/radio/ims/CallForwardStatus;

    .line 2529
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toCallForwardStatus([Lvendor/qti/hardware/radio/ims/CallForwardStatus;)[Lorg/codeaurora/ims/CallForwardStatus;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/codeaurora/ims/CallForwardStatusInfo;-><init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V

    return-object v0
.end method

.method public static toCallModify(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;
    .locals 3

    .line 1672
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1674
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallDetails(Lvendor/qti/hardware/radio/ims/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 1676
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callIndex:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 1677
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callIndex:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    :cond_0
    const/4 v1, 0x0

    .line 1680
    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1681
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->failCause:I

    if-eqz v1, :cond_1

    .line 1682
    iget p0, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->failCause:I

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toCallModifyFailCause(I)I

    move-result p0

    iput p0, v0, Lorg/codeaurora/ims/CallModify;->error:I

    :cond_1
    return-object v0
.end method

.method private static toCallModifyFailCause(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x21

    return p0

    :pswitch_1
    const/16 p0, 0x20

    return p0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    :pswitch_3
    const/16 p0, 0x1e

    return p0

    :pswitch_4
    const/16 p0, 0x1d

    return p0

    :pswitch_5
    const/16 p0, 0x1c

    return p0

    :pswitch_6
    const/16 p0, 0x1b

    return p0

    :pswitch_7
    const/16 p0, 0x10

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_9
    const/4 p0, 0x6

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
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

.method private static toCallProgressInfo(Lvendor/qti/hardware/radio/ims/CallProgressInfo;Lorg/codeaurora/ims/CallProgressInfo;)V
    .locals 2

    .line 2315
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->type:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCallProgressInfoType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setType(I)V

    .line 2317
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonCode:I

    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_0

    .line 2318
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonCode:I

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setReasonCode(I)V

    .line 2321
    :cond_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2322
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/CallProgressInfo;->setReasonText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static toCallProgressInfoType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static toCallState(I)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 2265
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 2262
    :pswitch_0
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 2260
    :pswitch_1
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 2258
    :pswitch_2
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 2256
    :pswitch_3
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 2254
    :pswitch_4
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 2252
    :pswitch_5
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toCallSubstateConstants(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static toCallType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xa

    return p0

    :pswitch_0
    const/16 p0, 0x1c

    return p0

    :pswitch_1
    const/16 p0, 0x1a

    return p0

    :pswitch_2
    const/16 p0, 0x1b

    return p0

    :pswitch_3
    const/16 p0, 0x19

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/16 p0, 0x18

    return p0

    :pswitch_6
    const/16 p0, 0x17

    return p0

    :pswitch_7
    const/16 p0, 0x16

    return p0

    :pswitch_8
    const/16 p0, 0x15

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_a
    const/4 p0, 0x3

    return p0

    :pswitch_b
    const/4 p0, 0x2

    return p0

    :pswitch_c
    const/4 p0, 0x1

    return p0

    :pswitch_d
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static toCallWaitingArray(Lvendor/qti/hardware/radio/ims/CallWaitingInfo;)[I
    .locals 3

    .line 3437
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceStatus:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toSuppSvcStatus(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3439
    new-array p0, v1, [I

    .line 3440
    aput v2, p0, v2

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 3442
    new-array v0, v0, [I

    .line 3443
    aput v1, v0, v2

    .line 3444
    iget p0, p0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceClass:I

    aput p0, v0, v1

    return-object v0
.end method

.method private static toCfStatus(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toCiWlanNotification(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static toClirArray(Lvendor/qti/hardware/radio/ims/ClirInfo;)[I
    .locals 4

    const/4 v0, 0x2

    .line 3422
    new-array v0, v0, [I

    .line 3423
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3424
    iget v3, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    aput v3, v0, v1

    .line 3426
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramM:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 3427
    iget v2, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramM:I

    aput v2, v0, v1

    .line 3429
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getClirResponse from ImsRadio. param_m - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "param_n - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static toCodec(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x14

    return p0

    :pswitch_1
    const/16 p0, 0x13

    return p0

    :pswitch_2
    const/16 p0, 0x12

    return p0

    :pswitch_3
    const/16 p0, 0x11

    return p0

    :pswitch_4
    const/16 p0, 0x10

    return p0

    :pswitch_5
    const/16 p0, 0xf

    return p0

    :pswitch_6
    const/16 p0, 0xe

    return p0

    :pswitch_7
    const/16 p0, 0xd

    return p0

    :pswitch_8
    const/16 p0, 0xc

    return p0

    :pswitch_9
    const/16 p0, 0xb

    return p0

    :pswitch_a
    const/16 p0, 0xa

    return p0

    :pswitch_b
    const/16 p0, 0x9

    return p0

    :pswitch_c
    const/16 p0, 0x8

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_e
    const/4 p0, 0x1

    return p0

    :pswitch_f
    const/4 p0, 0x7

    return p0

    :pswitch_10
    const/4 p0, 0x6

    return p0

    :pswitch_11
    const/4 p0, 0x5

    return p0

    :pswitch_12
    const/4 p0, 0x4

    return p0

    :pswitch_13
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static toComputedAudioQuality(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static toConferenceCallState(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static toConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)Lorg/codeaurora/ims/ConfInfo;
    .locals 4

    .line 1655
    new-instance v0, Lorg/codeaurora/ims/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ConfInfo;-><init>()V

    .line 1657
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1658
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtils;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfInfoUri(Ljava/util/ArrayList;)V

    .line 1659
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRefreshConferenceInfo: confUri = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1662
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->conferenceCallState:I

    if-eqz v1, :cond_1

    .line 1663
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->conferenceCallState:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toConferenceCallState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfCallState(I)V

    .line 1666
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRefreshConferenceInfo: conferenceCallState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->conferenceCallState:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;
    .locals 2

    .line 3409
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->hasBoolValue:Z

    if-eqz v0, :cond_0

    .line 3410
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->boolValue:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3411
    :cond_0
    iget v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 3412
    iget p0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 3413
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3414
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    return-object p0

    .line 3415
    :cond_2
    iget v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    if-eqz v0, :cond_3

    .line 3416
    iget p0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsConfigErrorCode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 3418
    :cond_3
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toImsConfig(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;

    move-result-object p0

    return-object p0
.end method

.method private static toCrsData(Lvendor/qti/hardware/radio/ims/CrsData;Lorg/codeaurora/ims/CrsData;)V
    .locals 1

    .line 2292
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CrsData;->type:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCrsType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CrsData;->setCrsType(I)V

    .line 2293
    iget p0, p0, Lvendor/qti/hardware/radio/ims/CrsData;->originalCallType:I

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/CrsData;->setOriginalCallType(I)V

    return-void
.end method

.method private static toCrsType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IIIILjava/lang/String;ZLjava/lang/String;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 2

    .line 2098
    new-instance v0, Lorg/codeaurora/ims/VerstatInfo;

    const/4 v1, 0x0

    .line 2099
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->toVerificationStatus(I)I

    move-result p2

    invoke-direct {v0, v1, p2}, Lorg/codeaurora/ims/VerstatInfo;-><init>(ZI)V

    .line 2100
    new-instance p2, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p2, p0, v0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;Lorg/codeaurora/ims/EcnamInfo;)V

    .line 2102
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsReasonInfoCode(I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x640

    .line 2105
    :cond_0
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p4, p3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object p1, p2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 2106
    new-instance p0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object p0, p2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2107
    iget-object p0, p2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-static {p5}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result p1

    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2108
    iput-object p6, p2, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2109
    iput-boolean p7, p2, Lorg/codeaurora/ims/DriverCallIms;->isDcCall:Z

    .line 2110
    iput-object p8, p2, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    return-object p2
.end method

.method public static toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 2055
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v1, :cond_0

    goto :goto_2

    .line 2058
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v1, :cond_1

    move-object v2, v0

    goto :goto_0

    .line 2059
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v1

    move-object v2, v1

    .line 2060
    :goto_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    if-nez v1, :cond_2

    goto :goto_1

    .line 2061
    :cond_2
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toEcnamInfo(Lvendor/qti/hardware/radio/ims/EcnamInfo;)Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 2063
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v4, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->verificationStatus:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v5, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->autoRejectionCause:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v6, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->sipErrorCode:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v7, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->callType:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget-object v8, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iget-boolean v9, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->isDcCall:Z

    iget-object v10, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callReason:Ljava/lang/String;

    invoke-static/range {v2 .. v10}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IIIILjava/lang/String;ZLjava/lang/String;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2119
    :cond_0
    iget v2, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->verificationStatus:I

    iget v3, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->autoRejectionCause:I

    iget v4, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->sipErrorCode:I

    iget v5, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->callType:I

    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v8}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IIIILjava/lang/String;ZLjava/lang/String;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object p0

    return-object p0
.end method

.method public static toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2078
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2082
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 2083
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 2085
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v3, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->verificationStatus:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v4, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->autoRejectionCause:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v5, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->sipErrorCode:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v6, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->callType:I

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v9}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IIIILjava/lang/String;ZLjava/lang/String;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 10

    .line 2135
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    new-instance v1, Lorg/codeaurora/ims/VerstatInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/VerstatInfo;->canMarkUnwantedCall:Z

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/VerstatInfo;->verificationStatus:I

    .line 2136
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toVerificationStatus(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/codeaurora/ims/VerstatInfo;-><init>(ZI)V

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/VerstatInfo;)V

    .line 2137
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    if-eqz v1, :cond_0

    .line 2138
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallState(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 2141
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2142
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 2145
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    if-eq v1, v2, :cond_2

    .line 2146
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 2149
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 2150
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 2152
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    if-eq v1, v2, :cond_3

    .line 2153
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 2156
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 2158
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 2160
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->numberPresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 2162
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 2163
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->namePresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 2166
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 2168
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->tirMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->isTirOverwriteAllowed(I)Z

    move-result v1

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    .line 2170
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    iget-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/StableAidl;->toCrsData(Lvendor/qti/hardware/radio/ims/CrsData;Lorg/codeaurora/ims/CrsData;)V

    .line 2171
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isPreparatory:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 2173
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 2174
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->diversionInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 2177
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVideoConfSupported:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x1

    .line 2178
    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 2180
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallDetails(Lvendor/qti/hardware/radio/ims/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2182
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2183
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget v4, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2185
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    iget-object v4, v0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-static {v1, v4}, Lorg/codeaurora/ims/StableAidl;->toCallProgressInfo(Lvendor/qti/hardware/radio/ims/CallProgressInfo;Lorg/codeaurora/ims/CallProgressInfo;)V

    .line 2191
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->failCause:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v1, :cond_8

    .line 2196
    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v6, v6, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v6, v6, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object v6, v6, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2197
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2198
    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v6, v6, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object v6, v6, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2199
    sget-object v7, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "CallFailCauseResponse: error string = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v6, v4

    .line 2203
    :goto_1
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsReasonInfoCode(I)I

    move-result v7

    .line 2204
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidlErrorCode;->toQtiCallFailReasonCode(I)I

    move-result v8

    .line 2206
    iget-object v9, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-boolean v9, v9, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v9, v9, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v9, v9, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    if-eq v9, v2, :cond_6

    .line 2208
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    move v3, v2

    goto :goto_2

    .line 2210
    :cond_6
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v9, "CallFailCauseResponse has no int error code!"

    invoke-static {v2, v9}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    :goto_2
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSipError(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    if-eqz v6, :cond_7

    move-object v4, v6

    :cond_7
    move v1, v3

    move v3, v7

    goto :goto_3

    .line 2220
    :cond_8
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v2, "CallFailCauseResponse failCause is Invalid"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    move v8, v5

    .line 2223
    :goto_3
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v3, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-ne v8, v5, :cond_9

    goto :goto_4

    :cond_9
    move v3, v8

    .line 2226
    :goto_4
    iput v3, v0, Lorg/codeaurora/ims/DriverCallIms;->mAdditionalCallFailCause:I

    .line 2228
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Qti Call fail cause= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lorg/codeaurora/ims/DriverCallIms;->mAdditionalCallFailCause:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2231
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 2233
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    if-eqz v2, :cond_a

    .line 2234
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;->additionalCode:I

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toMsimAdditionalCallInfoCode(I)I

    move-result v5

    .line 2233
    :cond_a
    invoke-virtual {v1, v5}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->setCode(I)V

    .line 2237
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->audioQuality:Lvendor/qti/hardware/radio/ims/AudioQuality;

    if-eqz v1, :cond_b

    .line 2238
    new-instance v1, Lorg/codeaurora/ims/AudioQuality;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->audioQuality:Lvendor/qti/hardware/radio/ims/AudioQuality;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/AudioQuality;->codec:I

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toCodec(I)I

    move-result v2

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->audioQuality:Lvendor/qti/hardware/radio/ims/AudioQuality;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/AudioQuality;->computedAudioQuality:I

    .line 2239
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toComputedAudioQuality(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/codeaurora/ims/AudioQuality;-><init>(II)V

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 2242
    :cond_b
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->modemCallId:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    .line 2243
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isCalledPartyRinging:Z

    .line 2244
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEmergency:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isEmergency:Z

    .line 2245
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callReason:Ljava/lang/String;

    iput-object p0, v0, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    return-object v0
.end method

.method public static toDriverCallImsArray([Lvendor/qti/hardware/radio/ims/CallInfo;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvendor/qti/hardware/radio/ims/CallInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;"
        }
    .end annotation

    .line 2125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2127
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2128
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v2

    .line 2129
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toEcnamInfo(Lvendor/qti/hardware/radio/ims/EcnamInfo;)Lorg/codeaurora/ims/EcnamInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3503
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->name:Ljava/lang/String;

    .line 3504
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->iconUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 3505
    :goto_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->infoUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->infoUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 3506
    :goto_1
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->cardUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->cardUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3507
    :cond_3
    new-instance p0, Lorg/codeaurora/ims/EcnamInfo;

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/codeaurora/ims/EcnamInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object p0
.end method

.method private static toExtraType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0
.end method

.method private static toFacility(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/16 p0, 0xc

    return p0

    :pswitch_2
    const/16 p0, 0xb

    return p0

    :pswitch_3
    const/16 p0, 0xa

    return p0

    :pswitch_4
    const/16 p0, 0x9

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_6
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_8
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

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

.method private static toFrameworkVerstat(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static toGeoLocationStatus(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 p0, 0x7d3

    return p0

    :cond_0
    const/16 p0, 0x7d2

    return p0

    :cond_1
    const/16 p0, 0x7d1

    return p0

    :cond_2
    const/16 p0, 0x7d0

    return p0
.end method

.method public static toHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1949
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/HoInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/HoInfo;-><init>()V

    .line 1951
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->type:I

    if-eqz v1, :cond_1

    .line 1952
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toHandoverType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setType(I)V

    .line 1955
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->srcTech:I

    if-eqz v1, :cond_2

    .line 1956
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->srcTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setSrcTech(I)V

    .line 1959
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->targetTech:I

    if-eqz v1, :cond_3

    .line 1960
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->targetTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setTargetTech(I)V

    .line 1963
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/Extra;->type:I

    if-eqz v1, :cond_4

    .line 1964
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/Extra;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toExtraType(I)I

    move-result v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/Extra;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/Extra;->extraInfo:[B

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/HoInfo;->setExtra(I[B)V

    .line 1968
    :cond_4
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorCode(Ljava/lang/String;)V

    .line 1969
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/HoInfo;->setErrorMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static toHandoverType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toImsCallForwardInfo(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toImsCallForwardInfoList(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;",
            "Landroid/telephony/ims/ImsSsData;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;"
        }
    .end annotation

    .line 3130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3131
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cfData:[Lvendor/qti/hardware/radio/ims/CfData;

    if-nez v1, :cond_0

    .line 3132
    sget-object p0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cfData is null, which is unexpected for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3133
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3132
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3135
    :cond_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cfData:[Lvendor/qti/hardware/radio/ims/CfData;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 3136
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CfData;->cfInfo:[Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    array-length v1, v1

    :goto_0
    if-ge p1, v1, :cond_1

    .line 3138
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CfData;->cfInfo:[Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    aget-object v2, v2, p1

    .line 3139
    new-instance v3, Landroid/telephony/ims/ImsCallForwardInfo;

    iget v4, v2, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    .line 3140
    invoke-static {v4}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardInfo(I)I

    move-result v4

    iget v5, v2, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    iget v6, v2, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    iget v7, v2, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    iget-object v8, v2, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    iget v9, v2, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    invoke-direct/range {v3 .. v9}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    .line 3139
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3144
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[SS Data] CF Info "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toImsCallForwardTimerInfo([Lvendor/qti/hardware/radio/ims/CallForwardInfo;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 2471
    array-length v1, p0

    .line 2472
    new-array v2, v1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    :goto_0
    if-ge v0, v1, :cond_9

    .line 2474
    new-instance v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v3, v2, v0

    .line 2475
    aget-object v3, p0, v0

    .line 2476
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    .line 2477
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 2479
    :cond_0
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    if-eq v4, v5, :cond_1

    .line 2480
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 2482
    :cond_1
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    if-eq v4, v5, :cond_2

    .line 2483
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 2485
    :cond_2
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    if-eq v4, v5, :cond_3

    .line 2486
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->toa:I

    .line 2488
    :cond_3
    aget-object v4, v2, v0

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 2489
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    if-eq v4, v5, :cond_4

    .line 2490
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->timeSeconds:I

    .line 2492
    :cond_4
    iget-object v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2493
    iget v6, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    if-eq v6, v5, :cond_5

    .line 2494
    aget-object v6, v2, v0

    iget v7, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    iput v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 2496
    :cond_5
    iget v6, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    if-eq v6, v5, :cond_6

    .line 2497
    aget-object v6, v2, v0

    iget v4, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    iput v4, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 2499
    :cond_6
    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2500
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    if-eq v4, v5, :cond_7

    .line 2501
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 2503
    :cond_7
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    if-eq v4, v5, :cond_8

    .line 2504
    aget-object v4, v2, v0

    iget v3, v3, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    iput v3, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-object v2

    .line 2508
    :cond_a
    new-array p0, v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 2509
    const-class v0, Lorg/codeaurora/ims/StableAidl;

    const-string v1, "inCfInfoList is null."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static toImsConfig(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1068
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 1069
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toImsConfigItem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 1070
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 1071
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 1074
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1075
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 1078
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 1080
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    if-eqz v1, :cond_3

    .line 1081
    iget p0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsConfigErrorCode(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    :cond_3
    return-object v0
.end method

.method private static toImsConfigItem(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x50

    return p0

    :pswitch_2
    const/16 p0, 0x4f

    return p0

    :pswitch_3
    const/16 p0, 0x4e

    return p0

    :pswitch_4
    const/16 p0, 0x4d

    return p0

    :pswitch_5
    const/16 p0, 0x51

    return p0

    :pswitch_6
    const/16 p0, 0x4b

    return p0

    :pswitch_7
    const/16 p0, 0x4a

    return p0

    :pswitch_8
    const/16 p0, 0x49

    return p0

    :pswitch_9
    const/16 p0, 0x48

    return p0

    :pswitch_a
    const/16 p0, 0x47

    return p0

    :pswitch_b
    const/16 p0, 0x45

    return p0

    :pswitch_c
    const/16 p0, 0x44

    return p0

    :pswitch_d
    const/16 p0, 0x43

    return p0

    :pswitch_e
    const/16 p0, 0x42

    return p0

    :pswitch_f
    const/16 p0, 0x41

    return p0

    :pswitch_10
    const/16 p0, 0x40

    return p0

    :pswitch_11
    const/16 p0, 0x3f

    return p0

    :pswitch_12
    const/16 p0, 0x3e

    return p0

    :pswitch_13
    const/16 p0, 0x3d

    return p0

    :pswitch_14
    const/16 p0, 0x3c

    return p0

    :pswitch_15
    const/16 p0, 0x3b

    return p0

    :pswitch_16
    const/16 p0, 0x3a

    return p0

    :pswitch_17
    const/16 p0, 0x39

    return p0

    :pswitch_18
    const/16 p0, 0x38

    return p0

    :pswitch_19
    const/16 p0, 0x37

    return p0

    :pswitch_1a
    const/16 p0, 0x36

    return p0

    :pswitch_1b
    const/16 p0, 0x35

    return p0

    :pswitch_1c
    const/16 p0, 0x34

    return p0

    :pswitch_1d
    const/16 p0, 0x33

    return p0

    :pswitch_1e
    const/16 p0, 0x32

    return p0

    :pswitch_1f
    const/16 p0, 0x31

    return p0

    :pswitch_20
    const/16 p0, 0x30

    return p0

    :pswitch_21
    const/16 p0, 0x2f

    return p0

    :pswitch_22
    const/16 p0, 0x2e

    return p0

    :pswitch_23
    const/16 p0, 0x2d

    return p0

    :pswitch_24
    const/16 p0, 0x2c

    return p0

    :pswitch_25
    const/16 p0, 0x2b

    return p0

    :pswitch_26
    const/16 p0, 0x2a

    return p0

    :pswitch_27
    const/16 p0, 0x29

    return p0

    :pswitch_28
    const/16 p0, 0x28

    return p0

    :pswitch_29
    const/16 p0, 0x27

    return p0

    :pswitch_2a
    const/16 p0, 0x26

    return p0

    :pswitch_2b
    const/16 p0, 0x25

    return p0

    :pswitch_2c
    const/16 p0, 0x24

    return p0

    :pswitch_2d
    const/16 p0, 0x23

    return p0

    :pswitch_2e
    const/16 p0, 0x22

    return p0

    :pswitch_2f
    const/16 p0, 0x21

    return p0

    :pswitch_30
    const/16 p0, 0x20

    return p0

    :pswitch_31
    const/16 p0, 0x1f

    return p0

    :pswitch_32
    const/16 p0, 0x1e

    return p0

    :pswitch_33
    const/16 p0, 0x1d

    return p0

    :pswitch_34
    const/16 p0, 0x1c

    return p0

    :pswitch_35
    const/16 p0, 0x1b

    return p0

    :pswitch_36
    const/16 p0, 0x1a

    return p0

    :pswitch_37
    const/16 p0, 0x19

    return p0

    :pswitch_38
    const/16 p0, 0x18

    return p0

    :pswitch_39
    const/16 p0, 0x17

    return p0

    :pswitch_3a
    const/16 p0, 0x16

    return p0

    :pswitch_3b
    const/16 p0, 0x15

    return p0

    :pswitch_3c
    const/16 p0, 0x14

    return p0

    :pswitch_3d
    const/16 p0, 0x13

    return p0

    :pswitch_3e
    const/16 p0, 0x12

    return p0

    :pswitch_3f
    const/16 p0, 0x11

    return p0

    :pswitch_40
    const/16 p0, 0x10

    return p0

    :pswitch_41
    const/16 p0, 0xf

    return p0

    :pswitch_42
    const/16 p0, 0xe

    return p0

    :pswitch_43
    const/16 p0, 0xd

    return p0

    :pswitch_44
    const/16 p0, 0xc

    return p0

    :pswitch_45
    const/16 p0, 0xb

    return p0

    :pswitch_46
    const/16 p0, 0xa

    return p0

    :pswitch_47
    const/16 p0, 0x9

    return p0

    :pswitch_48
    const/16 p0, 0x8

    return p0

    :pswitch_49
    const/4 p0, 0x7

    return p0

    :pswitch_4a
    const/4 p0, 0x6

    return p0

    :pswitch_4b
    const/4 p0, 0x5

    return p0

    :pswitch_4c
    const/4 p0, 0x4

    return p0

    :pswitch_4d
    const/4 p0, 0x3

    return p0

    :pswitch_4e
    const/4 p0, 0x2

    return p0

    :pswitch_4f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
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
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1376
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsRegistrationInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsRegistrationInfo;-><init>()V

    .line 1377
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->state:I

    if-eqz v1, :cond_1

    .line 1378
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRegState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setState(I)V

    .line 1381
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1382
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorCode:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorCode(I)V

    .line 1385
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 1387
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->radioTech:I

    if-eqz v1, :cond_3

    .line 1388
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setRadioTech(I)V

    .line 1391
    :cond_3
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setPAssociatedUris(Ljava/lang/String;)V

    return-object v0
.end method

.method public static toImsSsData(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)Landroid/telephony/ims/ImsSsData;
    .locals 6

    .line 3207
    new-instance v0, Landroid/telephony/ims/ImsSsData$Builder;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceType:I

    .line 3208
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceType(I)I

    move-result v1

    iget v2, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->requestType:I

    .line 3209
    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toRequestType(I)I

    move-result v2

    iget v3, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->teleserviceType:I

    .line 3210
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toTeleserviceType(I)I

    move-result v3

    iget v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceClass:I

    iget v5, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->result:I

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsSsData$Builder;-><init>(IIIII)V

    .line 3212
    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData$Builder;->build()Landroid/telephony/ims/ImsSsData;

    move-result-object v1

    .line 3214
    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData;->isTypeCf()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3215
    invoke-static {p0, v1}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardInfoList(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3217
    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsSsData$Builder;->setCallForwardingInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    return-object v1

    .line 3219
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData;->isTypeIcb()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3220
    invoke-static {p0, v1}, Lorg/codeaurora/ims/StableAidl;->toImsSsInfoListCb(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3222
    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsSsData$Builder;->setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    return-object v1

    .line 3231
    :cond_1
    invoke-static {p0, v1}, Lorg/codeaurora/ims/StableAidl;->toImsSsInfoList(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3233
    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsSsData$Builder;->setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    :cond_2
    return-object v1
.end method

.method public static toImsSsInfoList(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;",
            "Landroid/telephony/ims/ImsSsData;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation

    .line 3173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3174
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->ssInfoData:[Lvendor/qti/hardware/radio/ims/SsInfoData;

    if-nez v1, :cond_0

    .line 3175
    sget-object p0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imsSsInfo is null, which is unexpected for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3176
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3175
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3178
    :cond_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->ssInfoData:[Lvendor/qti/hardware/radio/ims/SsInfoData;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    .line 3179
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    array-length v2, v2

    if-lez v2, :cond_3

    .line 3181
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget v4, v4, v1

    invoke-direct {v3, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 3183
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeClir()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3185
    iget-object p1, p0, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget p1, p1, v1

    invoke-virtual {v3, p1}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    if-le v2, v5, :cond_2

    .line 3187
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget p0, p0, v5

    invoke-virtual {v3, p0}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    goto :goto_0

    :cond_1
    if-le v2, v5, :cond_2

    .line 3190
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget p0, p0, v5

    invoke-virtual {v3, p0}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 3192
    :cond_2
    :goto_0
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public static toImsSsInfoListCb(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;",
            "Landroid/telephony/ims/ImsSsData;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation

    .line 3152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3153
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    if-nez v1, :cond_0

    .line 3154
    sget-object p0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbNumInfo is null, which is unexpected for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3155
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3154
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3157
    :cond_0
    iget-object p1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    array-length p1, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 3159
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lvendor/qti/hardware/radio/ims/CbNumInfo;->status:I

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 3162
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aget-object v3, v3, v1

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 3164
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3165
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[SS Data] ICB Info "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1314
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;-><init>()V

    .line 1315
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->simultStackCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1316
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->simultStackCount:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSubConfigDetails;->setSimultStackCount(I)V

    :cond_1
    const/4 v1, 0x0

    .line 1319
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->imsStackEnabled:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1320
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->imsStackEnabled:[Z

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSubConfigDetails;->addImsStackEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)Lorg/codeaurora/ims/sms/IncomingSms;
    .locals 3

    .line 3037
    iget v0, p0, Lvendor/qti/hardware/radio/ims/IncomingSms;->verstat:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toFrameworkVerstat(I)I

    move-result v0

    .line 3038
    new-instance v1, Lorg/codeaurora/ims/sms/IncomingSms;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IncomingSms;->format:Ljava/lang/String;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IncomingSms;->pdu:[B

    invoke-direct {v1, v2, p0, v0}, Lorg/codeaurora/ims/sms/IncomingSms;-><init>(Ljava/lang/String;[BI)V

    return-object v1
.end method

.method public static toIpPresentation(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static toLocation(Lvendor/qti/hardware/radio/ims/CallLocation;)Lorg/codeaurora/ims/CallComposerInfo$Location;
    .locals 6

    .line 2023
    new-instance v0, Lorg/codeaurora/ims/CallComposerInfo$Location;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallLocation;->radius:F

    iget-wide v2, p0, Lvendor/qti/hardware/radio/ims/CallLocation;->latitude:D

    iget-wide v4, p0, Lvendor/qti/hardware/radio/ims/CallLocation;->longitude:D

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/CallComposerInfo$Location;-><init>(FDD)V

    return-object v0
.end method

.method private static toMessageDetails(Lvendor/qti/hardware/radio/ims/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3362
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    .line 3364
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3365
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->toAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 3368
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3369
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->fromAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 3372
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3373
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->subject:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 3376
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3377
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->date:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 3380
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->priority:I

    if-eqz v1, :cond_5

    .line 3381
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->priority:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toMwiMessagePriority(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 3384
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3385
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 3388
    :cond_6
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->type:I

    if-eqz v1, :cond_7

    .line 3389
    iget p0, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->type:I

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toMwiMessageType(I)I

    move-result p0

    iput p0, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    :cond_7
    return-object v0
.end method

.method private static toMessageSummary(Lvendor/qti/hardware/radio/ims/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3313
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    .line 3315
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->type:I

    if-eqz v1, :cond_1

    .line 3316
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toMwiMessageType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 3319
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newMessageCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 3320
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 3323
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldMessageCount:I

    if-eq v1, v2, :cond_3

    .line 3324
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 3327
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newUrgentMessageCount:I

    if-eq v1, v2, :cond_4

    .line 3328
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 3331
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldUrgentMessageCount:I

    if-eq v1, v2, :cond_5

    .line 3332
    iget p0, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldUrgentMessageCount:I

    iput p0, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    :cond_5
    return-object v0
.end method

.method public static toMessageWaitingIndication(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3282
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi;-><init>()V

    .line 3283
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageSummary:[Lvendor/qti/hardware/radio/ims/MessageSummary;

    const/4 v2, 0x0

    const-class v3, Lorg/codeaurora/ims/StableAidl;

    if-eqz v1, :cond_2

    .line 3284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "toMessageWaitingIndication summaryLength = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageSummary:[Lvendor/qti/hardware/radio/ims/MessageSummary;

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3286
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageSummary:[Lvendor/qti/hardware/radio/ims/MessageSummary;

    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    if-eqz v6, :cond_1

    .line 3288
    iget-object v7, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-static {v6}, Lorg/codeaurora/ims/StableAidl;->toMessageSummary(Lvendor/qti/hardware/radio/ims/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3292
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    .line 3293
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3294
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi;->mUeAddress:Ljava/lang/String;

    .line 3296
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageDetails:[Lvendor/qti/hardware/radio/ims/MessageDetails;

    if-eqz v1, :cond_5

    .line 3297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "toMessageWaitingIndication detailsLength = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageDetails:[Lvendor/qti/hardware/radio/ims/MessageDetails;

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3299
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageDetails:[Lvendor/qti/hardware/radio/ims/MessageDetails;

    array-length v1, p0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    .line 3301
    iget-object v4, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:Ljava/util/List;

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toMessageDetails(Lvendor/qti/hardware/radio/ims/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static toMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 3

    .line 557
    new-instance v0, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->msisdn:Ljava/lang/String;

    iget v2, p0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->lineType:I

    iget p0, p0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->registrationStatus:I

    invoke-direct {v0, v1, v2, p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static toMultiIdentityLineInfoList([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;"
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 548
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 549
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v3

    .line 550
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toMultiSimVoiceCapability(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 3493
    sget-object p0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v0, "toMultiSimVoiceCapability: Invalid voice capability"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static toMwiMessagePriority(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static toMwiMessageType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toParticipantStatus(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static toParticipantStatus(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1911
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;-><init>()V

    .line 1913
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->callId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1914
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->callId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setCallId(I)V

    .line 1917
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->operation:I

    if-eqz v1, :cond_2

    .line 1918
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->operation:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toParticipantStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setOperation(I)V

    .line 1921
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setParticipantUri(Ljava/lang/String;)V

    .line 1923
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->sipStatus:I

    if-eq v1, v2, :cond_3

    .line 1924
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->sipStatus:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setSipStatus(I)V

    .line 1927
    :cond_3
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->isEct:Z

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setIsEct(Z)V

    return-object v0
.end method

.method public static toPreAlertingInfo(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)Lorg/codeaurora/ims/PreAlertingCallInfo;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3516
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/PreAlertingCallInfo;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->callId:I

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    .line 3517
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toEcnamInfo(Lvendor/qti/hardware/radio/ims/EcnamInfo;)Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v3

    iget v4, p0, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->modemCallId:I

    iget-boolean v5, p0, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->isDcCall:Z

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V

    return-object v0
.end method

.method private static toPriority(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toRadioState(I)Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1649
    sget-object p0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v0, "toRadioState: Invalid Radio State Change"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    sget-object p0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object p0

    .line 1647
    :cond_0
    sget-object p0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object p0

    .line 1645
    :cond_1
    sget-object p0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object p0

    .line 1643
    :cond_2
    sget-object p0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object p0
.end method

.method private static toRadioTech(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7fffffff

    return p0

    :pswitch_0
    const/16 p0, 0x15

    return p0

    :pswitch_1
    const/16 p0, 0x14

    return p0

    :pswitch_2
    const/16 p0, 0x13

    return p0

    :pswitch_3
    const/16 p0, 0x12

    return p0

    :pswitch_4
    const/16 p0, 0x11

    return p0

    :pswitch_5
    const/16 p0, 0x10

    return p0

    :pswitch_6
    const/16 p0, 0xf

    return p0

    :pswitch_7
    const/16 p0, 0xe

    return p0

    :pswitch_8
    const/16 p0, 0xd

    return p0

    :pswitch_9
    const/16 p0, 0xc

    return p0

    :pswitch_a
    const/16 p0, 0xb

    return p0

    :pswitch_b
    const/16 p0, 0xa

    return p0

    :pswitch_c
    const/16 p0, 0x9

    return p0

    :pswitch_d
    const/16 p0, 0x8

    return p0

    :pswitch_e
    const/4 p0, 0x7

    return p0

    :pswitch_f
    const/4 p0, 0x6

    return p0

    :pswitch_10
    const/4 p0, 0x5

    return p0

    :pswitch_11
    const/4 p0, 0x4

    return p0

    :pswitch_12
    const/4 p0, 0x3

    return p0

    :pswitch_13
    const/4 p0, 0x2

    return p0

    :pswitch_14
    const/4 p0, 0x1

    return p0

    :pswitch_15
    const/4 p0, 0x0

    return p0

    :pswitch_16
    const/4 p0, -0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static toRegFailureReason(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x2

    return p0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static toRegState(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0
.end method

.method public static toRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    .locals 2

    .line 1802
    new-instance v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;-><init>()V

    .line 1804
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWwan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWwan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    if-eqz v1, :cond_0

    .line 1806
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWwan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toBlockStatus(Lvendor/qti/hardware/radio/ims/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWwan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 1809
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWlan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWlan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    if-eqz v1, :cond_1

    .line 1811
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWlan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toBlockStatus(Lvendor/qti/hardware/radio/ims/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWlan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    :cond_1
    return-object v0
.end method

.method public static toRequestType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static toRingbackTone(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static toRttMode(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static toServiceClassProvisionStatus(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toServiceClassStatus(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toServiceDomain(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static toServiceStatus([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1399
    sget-object p0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v0, "inList is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1403
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object p0

    .line 1404
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static toServiceStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Lorg/codeaurora/ims/ServiceStatus;
    .locals 6

    .line 1430
    new-instance v0, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    .line 1431
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->isValid:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 1432
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 1433
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    array-length v1, v1

    const v2, 0x7fffffff

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 1434
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    goto :goto_0

    .line 1436
    :cond_0
    new-array v1, v3, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 1437
    iget-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 1439
    iget-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v5

    const/16 v4, 0xe

    .line 1440
    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1442
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    if-eqz v4, :cond_1

    .line 1443
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    invoke-static {v4}, Lorg/codeaurora/ims/StableAidl;->toStatusType(I)I

    move-result v4

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 1445
    :cond_1
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    if-eq v4, v2, :cond_2

    .line 1446
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 1450
    :cond_2
    :goto_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    if-eqz v1, :cond_3

    .line 1451
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toStatusType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 1454
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    if-eqz v1, :cond_4

    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1457
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v2, "Partially Enabled Status due to Restrict Cause"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1458
    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 1461
    :cond_4
    iget p0, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->rttMode:I

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toRttMode(I)I

    move-result p0

    iput p0, v0, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    return-object v0
.end method

.method public static toServiceType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x16

    return p0

    :pswitch_1
    const/16 p0, 0x15

    return p0

    :pswitch_2
    const/16 p0, 0x14

    return p0

    :pswitch_3
    const/16 p0, 0x13

    return p0

    :pswitch_4
    const/16 p0, 0x12

    return p0

    :pswitch_5
    const/16 p0, 0x11

    return p0

    :pswitch_6
    const/16 p0, 0x10

    return p0

    :pswitch_7
    const/16 p0, 0xf

    return p0

    :pswitch_8
    const/16 p0, 0xe

    return p0

    :pswitch_9
    const/16 p0, 0xd

    return p0

    :pswitch_a
    const/16 p0, 0xc

    return p0

    :pswitch_b
    const/16 p0, 0xb

    return p0

    :pswitch_c
    const/16 p0, 0xa

    return p0

    :pswitch_d
    const/16 p0, 0x9

    return p0

    :pswitch_e
    const/16 p0, 0x8

    return p0

    :pswitch_f
    const/4 p0, 0x7

    return p0

    :pswitch_10
    const/4 p0, 0x6

    return p0

    :pswitch_11
    const/4 p0, 0x5

    return p0

    :pswitch_12
    const/4 p0, 0x4

    return p0

    :pswitch_13
    const/4 p0, 0x3

    return p0

    :pswitch_14
    const/4 p0, 0x2

    return p0

    :pswitch_15
    const/4 p0, 0x1

    return p0

    :pswitch_16
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static toSipError(I)I
    .locals 1

    const/16 v0, 0x204

    if-eq p0, v0, :cond_2

    const/16 v0, 0x207

    if-eq p0, v0, :cond_1

    const/16 v0, 0x208

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x244

    return p0

    :pswitch_1
    const/16 p0, 0x201

    return p0

    :pswitch_2
    const/16 p0, 0x1f9

    return p0

    :pswitch_3
    const/16 p0, 0x1f7

    return p0

    :pswitch_4
    const/16 p0, 0x1f6

    return p0

    :pswitch_5
    const/16 p0, 0x1f5

    return p0

    :pswitch_6
    const/16 p0, 0x1f4

    return p0

    :cond_0
    const/16 p0, 0x1e0

    return p0

    :cond_1
    const/16 p0, 0x198

    return p0

    :cond_2
    const/16 p0, 0x193

    return p0

    :pswitch_data_0
    .packed-switch 0x20e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x213
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1299
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object p0

    .line 1301
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 1302
    iget v2, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    .line 1303
    iget p0, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    goto :goto_0

    :cond_1
    move p0, v0

    .line 1305
    :goto_0
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v0, p0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v2
.end method

.method public static toSmsCallBackMode(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static toSmsResponse(IIIII)Lorg/codeaurora/ims/sms/SmsResponse;
    .locals 6

    .line 177
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSmsSendStatus(I)I

    move-result v2

    .line 178
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toSmsManagerError(I)I

    move-result v3

    .line 179
    invoke-static {p4}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v5

    .line 180
    new-instance v0, Lorg/codeaurora/ims/sms/SmsResponse;

    move v1, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(IIIII)V

    return-object v0
.end method

.method private static toSmsSendStatus(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method private static toStatusForAccessTech(Lvendor/qti/hardware/radio/ims/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 3

    if-eqz p0, :cond_5

    .line 1533
    new-instance v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v0}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    .line 1534
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->networkMode:I

    if-eqz v1, :cond_0

    .line 1535
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->networkMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1538
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->status:I

    if-eqz v1, :cond_1

    .line 1539
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toStatusType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 1542
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->restrictCause:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1543
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 1546
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->hasRegistration:Z

    if-eqz v1, :cond_4

    .line 1547
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    if-eqz v1, :cond_3

    .line 1549
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    iget p0, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->state:I

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toRegState(I)I

    move-result p0

    iput p0, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    return-object v0

    :cond_3
    const/4 p0, 0x2

    .line 1551
    iput p0, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    :cond_4
    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;
    .locals 3

    .line 3020
    new-instance v0, Lorg/codeaurora/ims/sms/StatusReport;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->messageRef:I

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->format:Ljava/lang/String;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->pdu:[B

    invoke-direct {v0, v1, v2, p0}, Lorg/codeaurora/ims/sms/StatusReport;-><init>(ILjava/lang/String;[B)V

    return-object v0
.end method

.method private static toStatusType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static toSuppNotifyInfo(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toSuppNotifyInfo(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2814
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppNotifyInfo;-><init>()V

    .line 2815
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->notificationType:I

    if-eqz v1, :cond_1

    .line 2816
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->notificationType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSuppNotifyInfo(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNotificationType(I)V

    .line 2819
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->code:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 2820
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setCode(I)V

    .line 2822
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->index:I

    if-eq v1, v2, :cond_3

    .line 2823
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setIndex(I)V

    .line 2825
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->type:I

    if-eq v1, v2, :cond_4

    .line 2826
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->type:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setType(I)V

    .line 2828
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->connId:I

    if-eq v1, v2, :cond_5

    .line 2829
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->connId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setConnId(I)V

    .line 2831
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNumber(Ljava/lang/String;)V

    .line 2832
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHistoryInfo(Ljava/lang/String;)V

    .line 2833
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->hasHoldTone:Z

    if-eqz v1, :cond_6

    .line 2834
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->holdTone:Z

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHoldTone(Z)V

    :cond_6
    return-object v0
.end method

.method public static toSuppService(Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;)Lorg/codeaurora/ims/SuppService;
    .locals 4

    .line 1256
    new-instance v0, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 1257
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->clipStatus:I

    .line 1258
    const-class v2, Lorg/codeaurora/ims/StableAidl;

    if-eqz v1, :cond_0

    .line 1259
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->clipStatus:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSuppServiceStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "toSuppService. Clipstatus "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1263
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "toSuppService. Errorcode "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "String "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static toSuppService(Lvendor/qti/hardware/radio/ims/ColrInfo;)Lorg/codeaurora/ims/SuppService;
    .locals 5

    .line 835
    new-instance v0, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 837
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setServiceClassStatus(I)V

    .line 838
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->provisionStatus:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassProvisionStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setProvisionStatus(I)V

    .line 839
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 841
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->presentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toIpPresentation(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setPresentation(I)V

    .line 844
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getColrResponse from ImsRadio. presentation "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 848
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getColrResponse from ImsRadio. errorcode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static toSuppServiceStatus(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toSuppSvcResponse(Lvendor/qti/hardware/radio/ims/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;
    .locals 12

    .line 2653
    new-instance v0, Lorg/codeaurora/ims/SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppSvcResponse;-><init>()V

    .line 2654
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setStatus(I)V

    .line 2655
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    .line 2656
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassProvisionStatus(I)I

    move-result v1

    .line 2655
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setProvisionStatus(I)V

    .line 2657
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    if-eqz v1, :cond_0

    .line 2658
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toFacility(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFacilityType(I)V

    .line 2660
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 2661
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2662
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFailureCause(Ljava/lang/String;)V

    .line 2664
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->cbNumListInfo:[Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 2665
    iget v6, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->serviceClass:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_2

    goto :goto_2

    .line 2668
    :cond_2
    new-instance v6, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    iget v7, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->serviceClass:I

    invoke-direct {v6, v7}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;-><init>(I)V

    .line 2671
    iget-object v7, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    if-eqz v7, :cond_3

    .line 2672
    iget-object v5, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    array-length v7, v5

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v5, v8

    .line 2673
    new-instance v10, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    iget v11, v9, Lvendor/qti/hardware/radio/ims/CbNumInfo;->status:I

    iget-object v9, v9, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    invoke-direct {v10, v11, v9}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;-><init>(ILjava/lang/String;)V

    .line 2676
    invoke-virtual {v6, v10}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->addLine(Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2679
    :cond_3
    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/SuppSvcResponse;->addBarredLines(Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2682
    :cond_4
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->hasErrorDetails:Z

    if-eqz v1, :cond_5

    .line 2683
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2685
    :cond_5
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->isPasswordRequired:Z

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/SuppSvcResponse;->setPasswordRequired(Z)V

    return-object v0
.end method

.method public static toSuppSvcStatus(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toTeleserviceType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toTtyMode(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static toUssdInfo(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;
    .locals 2

    .line 2871
    new-instance v0, Lorg/codeaurora/ims/UssdInfo;

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toUssdModeType(I)I

    move-result p0

    iget v1, p2, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    iget-object p2, p2, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/codeaurora/ims/UssdInfo;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private static toUssdModeType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toVerificationStatus(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static toViceUriInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)Lorg/codeaurora/ims/ViceUriInfo;
    .locals 4

    .line 3120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3121
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ViceInfo;->viceInfoUri:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3122
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ViceInfo;->viceInfoUri:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3123
    :cond_0
    new-instance p0, Lorg/codeaurora/ims/ViceUriInfo;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ViceUriInfo;-><init>(Ljava/util/ArrayList;)V

    .line 3124
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRefreshViceInfo: viceUri = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static toVoWiFiQuality(I)[I
    .locals 4

    const/4 v0, 0x1

    .line 2851
    new-array v1, v0, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p0, v2, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 2863
    aput v3, v1, v3

    return-object v1

    .line 2860
    :cond_0
    aput v0, v1, v3

    return-object v1

    .line 2857
    :cond_1
    aput v2, v1, v3

    return-object v1

    .line 2854
    :cond_2
    aput v0, v1, v3

    return-object v1
.end method

.method public static toVoiceInfo(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 6

    .line 1512
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    array-length v0, v0

    .line 1514
    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1518
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v3, v1, v2

    .line 1519
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toStatusForAccessTech(Lvendor/qti/hardware/radio/ims/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1520
    sget-object v3, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " networkMode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " restrictCause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " registered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
