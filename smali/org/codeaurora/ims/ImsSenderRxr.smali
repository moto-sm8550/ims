.class public Lorg/codeaurora/ims/ImsSenderRxr;
.super Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;,
        Lorg/codeaurora/ims/ImsSenderRxr$QtiRadioConfigIndication;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field private static final EVENT_QTI_RADIO_CONFIG_SERVICE_UP:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x1

.field static final IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

.field static final LOG_TAG:Ljava/lang/String; = "ImsSenderRxr"

.field private static final MSG_TAG_LENGTH:I = 0x1

.field private static final PDU_LENGTH_OFFSET:I = 0x4

.field static final ZERO_SECONDS:I


# instance fields
.field private mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

.field private mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

.field final mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

.field private mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

.field private mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field private mIsAidlReorderingSupported:Z

.field private mIsCrbtSupported:Z

.field private mIsSimultaneousCallingSupported:Z

.field private mIsUnsolCallListPresent:Z

.field protected mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mPhoneId:Ljava/lang/Integer;

.field private mQtiRadioConfigHal:Lorg/codeaurora/ims/IQtiRadioConfig;

.field private mQtiRadioConfigIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

.field private mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/IFRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field private mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field private mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I

.field private mWfcRoamingConfigurationSupport:Z

.field private mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoRejectRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCiWlanNotificationRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConferenceCallStateCompletedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeoLocationDataStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeolocationRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandoverStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsSubConfigChangeRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncomingDtmfStartRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncomingDtmfStopRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncomingSmsRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiIdentityInfoPendingRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiIdentityStatusChangeRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiSimVoiceCapabilityChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParticipantStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefreshConfInfoRegistrations(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationBlockStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRttMessageRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSendSmsStatusReportRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsCallbackModeChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSrtpEncryptionUpdateRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSrvDomainChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSrvStatusRegistrations(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTtyStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoWiFiCallQualityRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoiceInfoStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVopsRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcRoamingModeConfigRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAidlReorderingSupported(Lorg/codeaurora/ims/ImsSenderRxr;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsAidlReorderingSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCrbtSupported(Lorg/codeaurora/ims/ImsSenderRxr;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsCrbtSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSimultaneousCallingSupported(Lorg/codeaurora/ims/ImsSenderRxr;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsSimultaneousCallingSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsUnsolCallListPresent(Lorg/codeaurora/ims/ImsSenderRxr;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWfcRoamingConfigurationSupport(Lorg/codeaurora/ims/ImsSenderRxr;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearRequestsList(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRequestsList(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleQtiRadioConfigUp(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->handleQtiRadioConfigUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyServiceDown(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceDown(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyServiceUp(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceUp(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySipDtmfInfo(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifySipDtmfInfo(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUssdInfo(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyUssdInfo(Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 260
    const-string v0, "imsradio1"

    const-string v1, "imsradio2"

    const-string v2, "imsradio0"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 863
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 237
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    .line 245
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsAidlReorderingSupported:Z

    .line 247
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsCrbtSupported:Z

    .line 248
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsSimultaneousCallingSupported:Z

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    .line 254
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 301
    new-instance v1, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    .line 302
    new-instance v1, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    .line 305
    new-instance v1, Lorg/codeaurora/ims/ImsSenderRxr$QtiRadioConfigIndication;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr$QtiRadioConfigIndication;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mQtiRadioConfigIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

    .line 865
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    .line 866
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->initNotifyRegistrants()V

    .line 868
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 869
    const-string v2, "ImsSenderRxr"

    invoke-virtual {p2, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 870
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 871
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object p2

    const v1, 0xea60

    .line 872
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    .line 873
    new-instance p2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-direct {p2, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object p2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    .line 874
    iput v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 876
    new-instance p2, Lorg/codeaurora/ims/QtiRadioConfigAidl;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mQtiRadioConfigIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

    invoke-direct {p2, p1, v0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/IQtiRadioConfigIndication;)V

    iput-object p2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mQtiRadioConfigHal:Lorg/codeaurora/ims/IQtiRadioConfig;

    .line 878
    iget-object p2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2, v0, v1, p1}, Lorg/codeaurora/ims/ImsRadioHalFactory;->newImsRadioHal(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;ILandroid/content/Context;)Lorg/codeaurora/ims/IImsRadio;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    return-void
.end method

.method private acquireWakeLock()V
    .locals 5

    .line 927
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 928
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 930
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->removeMessages(I)V

    .line 931
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 932
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    iget p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    int-to-long v3, p0

    invoke-virtual {v2, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 933
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private clearRegistrants()V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetIncomingImsSms(Landroid/os/Handler;)V

    .line 317
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetImsSmsStatusReport(Landroid/os/Handler;)V

    .line 318
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 319
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 320
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 321
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 322
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 323
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 324
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 325
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 326
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 327
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 328
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 329
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 330
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 331
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 332
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 333
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 334
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 335
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 336
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 337
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 338
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 339
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 340
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 341
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 342
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 344
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 345
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 346
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 347
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 348
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 349
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 350
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 351
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 352
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 353
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    return-void
.end method

.method private clearRequestsList(IZ)V
    .locals 8

    const-string v0, "clearRequestsList: mRequestList="

    .line 968
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 969
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz p2, :cond_0

    .line 971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_2

    .line 975
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/IFRequest;

    if-eqz p2, :cond_1

    .line 977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 978
    invoke-static {v7}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 977
    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 980
    :cond_1
    invoke-virtual {v5, p1, v4}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 981
    invoke-virtual {v5}, Lorg/codeaurora/ims/IFRequest;->release()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 983
    :cond_2
    iget-object p2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 984
    iput v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 985
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 986
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    iget-boolean p2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    if-eqz p2, :cond_3

    .line 990
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 991
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance p2, Lorg/codeaurora/telephony/utils/AsyncResult;

    new-instance v0, Ljava/lang/RuntimeException;

    .line 993
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v4, v4, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 992
    invoke-virtual {p0, p2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 986
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private disableSrvStatus()V
    .locals 3

    .line 2161
    const-string v0, "disableSrvStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2162
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 2163
    new-instance v0, Lorg/codeaurora/ims/ImsRilException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    .line 2164
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v1, v2, v2, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2165
    invoke-virtual {p0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    :cond_0
    return-void
.end method

.method static errorIdToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1122
    const-string p0, "E_UNKNOWN"

    return-object p0

    .line 1120
    :pswitch_0
    const-string p0, "E_RIL_FAILED_INTERNAL"

    return-object p0

    .line 1118
    :pswitch_1
    const-string p0, "E_CF_SERVICE_NOT_REGISTERED"

    return-object p0

    .line 1116
    :pswitch_2
    const-string p0, "E_SEND_SIP_DTMF_FAILED"

    return-object p0

    .line 1114
    :pswitch_3
    const-string p0, "E_USSD_CS_FALLBACK"

    return-object p0

    .line 1112
    :pswitch_4
    const-string p0, "E_SS_MODIFIED_TO_DIAL_VIDEO"

    return-object p0

    .line 1110
    :pswitch_5
    const-string p0, "E_SS_MODIFIED_TO_SS"

    return-object p0

    .line 1108
    :pswitch_6
    const-string p0, "E_SS_MODIFIED_TO_USSD"

    return-object p0

    .line 1106
    :pswitch_7
    const-string p0, "E_SS_MODIFIED_TO_DIAL"

    return-object p0

    .line 1104
    :pswitch_8
    const-string p0, "E_FDN_CHECK_FAILURE"

    return-object p0

    .line 1100
    :cond_0
    const-string p0, "E_REJECTED_BY_REMOTE"

    return-object p0

    .line 1098
    :cond_1
    const-string p0, "E_INVALID_PARAMETER"

    return-object p0

    .line 1102
    :cond_2
    const-string p0, "E_NETWORK_NOT_SUPPORTED"

    return-object p0

    .line 1096
    :cond_3
    const-string p0, "E_UNUSED"

    return-object p0

    .line 1094
    :cond_4
    const-string p0, "E_CANCELLED"

    return-object p0

    .line 1092
    :cond_5
    const-string p0, "E_REQUEST_NOT_SUPPORTED"

    return-object p0

    .line 1090
    :cond_6
    const-string p0, "E_PASSWORD_INCORRECT"

    return-object p0

    .line 1088
    :cond_7
    const-string p0, "E_GENERIC_FAILURE"

    return-object p0

    .line 1086
    :cond_8
    const-string p0, "E_RADIO_NOT_AVAILABLE"

    return-object p0

    .line 1084
    :cond_9
    const-string p0, "SUCCESS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static facilityStringToInt(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_2

    .line 2556
    const-string v0, "CLIP"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2559
    :cond_0
    const-string v0, "COLP"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 2553
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "invalid supplementary service"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;
    .locals 5

    .line 998
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 999
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1000
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/IFRequest;

    .line 1002
    iget v4, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    if-ne v4, p1, :cond_1

    .line 1003
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1004
    iget p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1005
    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 1006
    :cond_0
    monitor-exit v0

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1009
    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleQtiRadioConfigUp()V
    .locals 2

    .line 370
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 371
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private initNotifyRegistrants()V
    .locals 2

    .line 883
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 884
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 885
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 886
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 887
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 888
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 889
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 890
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 891
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 892
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 893
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 894
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 895
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 896
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 897
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 898
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 899
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 900
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 901
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 902
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 903
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 904
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 905
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 906
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 907
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 908
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 909
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 910
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 911
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 912
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 913
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 914
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 915
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 916
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-void
.end method

.method static msgIdToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    .line 1364
    const-string p0, "<unknown message>"

    return-object p0

    .line 1362
    :pswitch_0
    const-string p0, "UNSOL_SRTP_ENCRYPTION_UPDATE"

    return-object p0

    .line 1360
    :pswitch_1
    const-string p0, "UNSOL_C_IWLAN_NOTIFICATION"

    return-object p0

    .line 1356
    :pswitch_2
    const-string p0, "UNSOL_INCOMING_CALL_AUTO_REJECTED"

    return-object p0

    .line 1358
    :pswitch_3
    const-string p0, "UNSOL_PRE_ALERTING_CALL_INFO_AVAILABLE"

    return-object p0

    .line 1354
    :pswitch_4
    const-string p0, "UNSOL_MULTI_SIM_VOICE_CAPABILITY_CHANGED"

    return-object p0

    .line 1352
    :pswitch_5
    const-string p0, "UNSOL_INCOMING_DTMF_STOP"

    return-object p0

    .line 1350
    :pswitch_6
    const-string p0, "UNSOL_INCOMING_DTMF_START"

    return-object p0

    .line 1348
    :pswitch_7
    const-string p0, "UNSOL_SCBM_UPDATE_IND"

    return-object p0

    .line 1346
    :pswitch_8
    const-string p0, "UNSOL_CONFERENCE_CALL_STATE_COMPLETED"

    return-object p0

    .line 1344
    :pswitch_9
    const-string p0, "UNSOL_SERVICE_DOMAIN_CHANGED"

    return-object p0

    .line 1342
    :pswitch_a
    const-string p0, "UNSOL_SIP_DTMF_RECEIVED"

    return-object p0

    .line 1340
    :pswitch_b
    const-string p0, "UNSOL_USSD_RECEIVED"

    return-object p0

    .line 1338
    :pswitch_c
    const-string p0, "UNSOL_RETRIEVE_GEO_LOCATION_DATA_STATUS"

    return-object p0

    .line 1336
    :pswitch_d
    const-string p0, "UNSOL_CALL_COMPOSER_INFO_AVAILABLE_IND"

    return-object p0

    .line 1334
    :pswitch_e
    const-string p0, "UNSOL_AUTO_CALL_COMPOSER_CALL_REJECTION_IND"

    return-object p0

    .line 1332
    :pswitch_f
    const-string p0, "UNSOL_USSD_FAILED"

    return-object p0

    .line 1330
    :pswitch_10
    const-string p0, "UNSOL_MODEM_SUPPORTS_WFC_ROAMING_MODE"

    return-object p0

    .line 1328
    :pswitch_11
    const-string p0, "UNSOL_MULTI_IDENTITY_INFO_PENDING"

    return-object p0

    .line 1326
    :pswitch_12
    const-string p0, "UNSOL_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE"

    return-object p0

    .line 1324
    :pswitch_13
    const-string p0, "UNSOL_VOICE_INFO"

    return-object p0

    .line 1322
    :pswitch_14
    const-string p0, "UNSOL_AUTO_CALL_REJECTION_IND"

    return-object p0

    .line 1320
    :pswitch_15
    const-string p0, "UNSOL_INCOMING_IMS_SMS"

    return-object p0

    .line 1318
    :pswitch_16
    const-string p0, "UNSOL_IMS_SMS_STATUS_REPORT"

    return-object p0

    .line 1316
    :pswitch_17
    const-string p0, "UNSOL_ON_SS"

    return-object p0

    .line 1314
    :pswitch_18
    const-string p0, "UNSOL_RESPONSE_RTT_MSG_RECEIVED"

    return-object p0

    .line 1312
    :pswitch_19
    const-string p0, "UNSOL_RESPONSE_REGISTRATION_BLOCK_STATUS"

    return-object p0

    .line 1310
    :pswitch_1a
    const-string p0, "UNSOL_IMS_SUB_CONFIG_CHANGED"

    return-object p0

    .line 1308
    :pswitch_1b
    const-string p0, "UNSOL_PARTICIPANT_STATUS_INFO"

    return-object p0

    .line 1306
    :pswitch_1c
    const-string p0, "UNSOL_SSAC_CHANGED"

    return-object p0

    .line 1304
    :pswitch_1d
    const-string p0, "UNSOL_VOPS_CHANGED"

    return-object p0

    .line 1302
    :pswitch_1e
    const-string p0, "UNSOL_VOWIFI_CALL_QUALITY"

    return-object p0

    .line 1298
    :pswitch_1f
    const-string p0, "UNSOL_REQUEST_GEOLOCATION"

    return-object p0

    .line 1300
    :pswitch_20
    const-string p0, "UNSOL_REFRESH_VICE_INFO"

    return-object p0

    .line 1296
    :pswitch_21
    const-string p0, "UNSOL_MWI"

    return-object p0

    .line 1294
    :pswitch_22
    const-string p0, "UNSOL_RADIO_STATE_CHANGED"

    return-object p0

    .line 1292
    :pswitch_23
    const-string p0, "UNSOL_TTY_NOTIFICATION"

    return-object p0

    .line 1290
    :pswitch_24
    const-string p0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object p0

    .line 1288
    :pswitch_25
    const-string p0, "UNSOL_SRV_STATUS_UPDATE"

    return-object p0

    .line 1286
    :pswitch_26
    const-string p0, "UNSOL_REFRESH_CONF_INFO"

    return-object p0

    .line 1284
    :pswitch_27
    const-string p0, "UNSOL_RESPONSE_HANDOVER"

    return-object p0

    .line 1158
    :pswitch_28
    const-string p0, "UNSOL_MODIFY_CALL"

    return-object p0

    .line 1280
    :pswitch_29
    const-string p0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 1276
    :pswitch_2a
    const-string p0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 1270
    :pswitch_2b
    const-string p0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object p0

    .line 1278
    :pswitch_2c
    const-string p0, "UNSOL_RINGBACK_TONE"

    return-object p0

    .line 1274
    :pswitch_2d
    const-string p0, "UNSOL_CALL_RING"

    return-object p0

    .line 1272
    :pswitch_2e
    const-string p0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object p0

    .line 1268
    :pswitch_2f
    const-string p0, "REQUEST_ABORT_CONFERENCE"

    return-object p0

    .line 1266
    :pswitch_30
    const-string p0, "REQUEST_SET_GLASSES_FREE_3D_VIDEO_CAPABILITY"

    return-object p0

    .line 1264
    :pswitch_31
    const-string p0, "REQUEST_SEND_VOS_ACTION_INFO"

    return-object p0

    .line 1262
    :pswitch_32
    const-string p0, "REQUEST_SEND_VOS_SUPPORT_STATUS"

    return-object p0

    .line 1260
    :pswitch_33
    const-string p0, "REQUEST_EXIT_SCBM"

    return-object p0

    .line 1258
    :pswitch_34
    const-string p0, "REQUEST_QUERY_MULTI_SIM_VOICE_CAPABILITY"

    return-object p0

    .line 1256
    :pswitch_35
    const-string p0, "REQUEST_SET_MEDIA_CONFIG"

    return-object p0

    .line 1254
    :pswitch_36
    const-string p0, "REQUEST_SIP_DTMF"

    return-object p0

    .line 1252
    :pswitch_37
    const-string p0, "REQUEST_CANCEL_USSD"

    return-object p0

    .line 1250
    :pswitch_38
    const-string p0, "REQUEST_USSD"

    return-object p0

    .line 1248
    :pswitch_39
    const-string p0, "CALL_COMPOSER_DIAL"

    return-object p0

    .line 1246
    :pswitch_3a
    const-string p0, "REQUEST_EMERGENCY_DIAL"

    return-object p0

    .line 1244
    :pswitch_3b
    const-string p0, "REQUEST_QUERY_VIRTUAL_LINE_INFO"

    return-object p0

    .line 1242
    :pswitch_3c
    const-string p0, "REQUEST_REGISTER_MULTI_IDENTITY_LINES"

    return-object p0

    .line 1240
    :pswitch_3d
    const-string p0, "REQUEST_ACK_IMS_SMS_STATUS_REPORT"

    return-object p0

    .line 1238
    :pswitch_3e
    const-string p0, "REQUEST_ACK_IMS_SMS"

    return-object p0

    .line 1236
    :pswitch_3f
    const-string p0, "REQUEST_SEND_IMS_SMS"

    return-object p0

    .line 1234
    :pswitch_40
    const-string p0, "REQUEST_CANCEL_MODIFY_CALL"

    return-object p0

    .line 1232
    :pswitch_41
    const-string p0, "REQUEST_SEND_RTT_MSG"

    return-object p0

    .line 1230
    :pswitch_42
    const-string p0, "REQUEST_GET_IMS_SUB_CONFIG"

    return-object p0

    .line 1228
    :pswitch_43
    const-string p0, "REQUEST_SET_HANDOVER_CONFIG"

    return-object p0

    .line 1226
    :pswitch_44
    const-string p0, "REQUEST_GET_HANDOVER_CONFIG"

    return-object p0

    .line 1224
    :pswitch_45
    const-string p0, "REQUEST_GET_VOLTE_PREF"

    return-object p0

    .line 1222
    :pswitch_46
    const-string p0, "REQUEST_SET_VOLTE_PREF"

    return-object p0

    .line 1220
    :pswitch_47
    const-string p0, "REQUEST_GET_SSAC_INFO"

    return-object p0

    .line 1218
    :pswitch_48
    const-string p0, "REQUEST_GET_VOPS_INFO"

    return-object p0

    .line 1216
    :pswitch_49
    const-string p0, "REQUEST_SEND_GEOLOCATION_INFO"

    return-object p0

    .line 1214
    :pswitch_4a
    const-string p0, "REQUEST_GET_IMS_CONFIG"

    return-object p0

    .line 1212
    :pswitch_4b
    const-string p0, "REQUEST_SET_IMS_CONFIG"

    return-object p0

    .line 1202
    :pswitch_4c
    const-string p0, "REQUEST_SET_WIFI_CALLING_STATUS"

    return-object p0

    .line 1200
    :pswitch_4d
    const-string p0, "REQUEST_GET_WIFI_CALLING_STATUS"

    return-object p0

    .line 1198
    :pswitch_4e
    const-string p0, "REQUEST_GET_RTP_ERROR_STATISTICS"

    return-object p0

    .line 1196
    :pswitch_4f
    const-string p0, "REQUEST_GET_RTP_STATISTICS"

    return-object p0

    .line 1152
    :pswitch_50
    const-string p0, "REQUEST_SEND_UI_TTY_MODE"

    return-object p0

    .line 1210
    :pswitch_51
    const-string p0, "REQUEST_RESUME"

    return-object p0

    .line 1208
    :pswitch_52
    const-string p0, "REQUEST_HOLD"

    return-object p0

    .line 1206
    :pswitch_53
    const-string p0, "REQUEST_SET_COLR"

    return-object p0

    .line 1204
    :pswitch_54
    const-string p0, "REQUEST_GET_COLR"

    return-object p0

    .line 1136
    :pswitch_55
    const-string p0, "REQUEST_DEFLECT_CALL"

    return-object p0

    .line 1194
    :pswitch_56
    const-string p0, "REQUEST_SUPP_SVC_STATUS"

    return-object p0

    .line 1178
    :pswitch_57
    const-string p0, "REQUEST_SET_SERVICE_STATUS"

    return-object p0

    .line 1176
    :pswitch_58
    const-string p0, "REQUEST_QUERY_SERVICE_STATUS"

    return-object p0

    .line 1138
    :pswitch_59
    const-string p0, "REQUEST_ADD_PARTICIPANT"

    return-object p0

    .line 1192
    :pswitch_5a
    const-string p0, "REQUEST_SET_SUPP_SVC_NOTIFICATION"

    return-object p0

    .line 1282
    :pswitch_5b
    const-string p0, "REQUEST_IMS_REG_STATE_CHANGE"

    return-object p0

    .line 1190
    :pswitch_5c
    const-string p0, "REQUEST_SET_CALL_WAITING"

    return-object p0

    .line 1188
    :pswitch_5d
    const-string p0, "REQUEST_QUERY_CALL_WAITING"

    return-object p0

    .line 1186
    :pswitch_5e
    const-string p0, "REQUEST_SET_CALL_FORWARD_STATUS"

    return-object p0

    .line 1184
    :pswitch_5f
    const-string p0, "REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object p0

    .line 1182
    :pswitch_60
    const-string p0, "REQUEST_SET_CLIR"

    return-object p0

    .line 1180
    :pswitch_61
    const-string p0, "REQUEST_GET_CLIR"

    return-object p0

    .line 1174
    :pswitch_62
    const-string p0, "REQUEST_QUERY_CLIP"

    return-object p0

    .line 1156
    :pswitch_63
    const-string p0, "MODIFY_CALL_CONFIRM"

    return-object p0

    .line 1154
    :pswitch_64
    const-string p0, "MODIFY_CALL_INITIATE"

    return-object p0

    .line 1150
    :pswitch_65
    const-string p0, "UDUB"

    return-object p0

    .line 1166
    :pswitch_66
    const-string p0, "DTMF_STOP"

    return-object p0

    .line 1164
    :pswitch_67
    const-string p0, "DTMF_START"

    return-object p0

    .line 1162
    :pswitch_68
    const-string p0, "DTMF"

    return-object p0

    .line 1168
    :pswitch_69
    const-string p0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object p0

    .line 1170
    :pswitch_6a
    const-string p0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 1148
    :pswitch_6b
    const-string p0, "CONFERENCE"

    return-object p0

    .line 1146
    :pswitch_6c
    const-string p0, "MessageId.REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object p0

    .line 1144
    :pswitch_6d
    const-string p0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object p0

    .line 1142
    :pswitch_6e
    const-string p0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object p0

    .line 1130
    :pswitch_6f
    const-string p0, "GET_CURRENT_CALLS"

    return-object p0

    .line 1160
    :pswitch_70
    const-string p0, "LAST_CALL_FAIL_CAUSE"

    return-object p0

    .line 1140
    :pswitch_71
    const-string p0, "HANGUP"

    return-object p0

    .line 1134
    :pswitch_72
    const-string p0, "REQUEST_ANSWER"

    return-object p0

    .line 1132
    :pswitch_73
    const-string p0, "DIAL"

    return-object p0

    .line 1172
    :pswitch_74
    const-string p0, "REQUEST_IMS_REGISTRATION_STATE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc9
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

.method private notifyServiceDown(Ljava/lang/String;)V
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyServiceDown : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-direct {v0, v1, p0, v1}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method private notifyServiceUp(Ljava/lang/String;)V
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyServiceUp : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-direct {v0, v1, p0, v1}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method private notifySipDtmfInfo(Ljava/lang/String;)V
    .locals 2

    .line 795
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz p0, :cond_0

    .line 796
    new-instance v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    :cond_0
    return-void
.end method

.method private notifyUssdInfo(Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 2

    .line 789
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz p0, :cond_0

    .line 790
    new-instance v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    :cond_0
    return-void
.end method

.method private queueRequest(Lorg/codeaurora/ims/IFRequest;)V
    .locals 2

    .line 952
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->acquireWakeLock()V

    .line 954
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 955
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    iget p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 957
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private releaseWakeLockIfDone()V
    .locals 2

    .line 937
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 938
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-nez v1, :cond_0

    .line 940
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 942
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeFromQueueAndSendResponse(I)V
    .locals 1

    const/4 v0, 0x2

    .line 802
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(II)V

    return-void
.end method

.method private removeFromQueueAndSendResponse(II)V
    .locals 1

    const/4 v0, 0x0

    .line 819
    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(IILjava/lang/Object;)V

    return-void
.end method

.method private removeFromQueueAndSendResponse(IILjava/lang/Object;)V
    .locals 1

    .line 823
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 826
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected solicited response or Invalid token id! token: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 830
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void
.end method

.method private removeFromQueueAndSendResponse(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 806
    invoke-direct {p0, p1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(IILjava/lang/Object;)V

    return-void
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-nez p2, :cond_0

    .line 1017
    const-string p0, ""

    return-object p0

    .line 1022
    :cond_0
    instance-of p0, p2, [I

    const-string v0, ", "

    const/4 v1, 0x0

    const-string v2, "}"

    const-string v3, "{"

    const/4 v4, 0x1

    if-eqz p0, :cond_2

    .line 1023
    check-cast p2, [I

    .line 1024
    array-length p0, p2

    .line 1025
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p0, :cond_1

    .line 1028
    aget v1, p2, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v4, p0, :cond_1

    .line 1030
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v4, 0x1

    aget v3, p2, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v4, v1

    goto :goto_0

    .line 1033
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1035
    :cond_2
    instance-of p0, p2, [Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 1036
    check-cast p2, [Ljava/lang/String;

    .line 1037
    array-length p0, p2

    .line 1038
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p0, :cond_3

    .line 1041
    aget-object v1, p2, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v4, p0, :cond_3

    .line 1043
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v4, 0x1

    aget-object v3, p2, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v1

    goto :goto_1

    .line 1046
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p0, 0xc9

    if-eq p1, p0, :cond_6

    const/4 p0, 0x6

    if-ne p1, p0, :cond_5

    goto :goto_2

    .line 1057
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1050
    :cond_6
    :goto_2
    check-cast p2, Ljava/util/ArrayList;

    .line 1051
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/codeaurora/ims/DriverCallIms;

    .line 1053
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1055
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1440
    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 1451
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1454
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsRadio HAL is not available. Can\'t send "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to QCRIL"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 1456
    invoke-virtual {p1, p0, p3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 1457
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    return p0
.end method

.method private sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 844
    invoke-virtual {p1, p2, p3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 845
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 846
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void

    .line 850
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "< "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 851
    invoke-direct {p0, v0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 850
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 853
    iget-object p2, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz p2, :cond_1

    .line 854
    iget-object p2, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 855
    iget-object p2, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 858
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 859
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void
.end method

.method private setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V
    .locals 14

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCallForwardInternal cfReason= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v9, p6

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "startHour = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "startMinute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "endHour = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "endMin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x17

    .line 2308
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p10

    .line 2309
    invoke-static {v0, v2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v13

    .line 2311
    invoke-direct {p0, v13, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2315
    :cond_0
    invoke-direct {p0, v13}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2317
    :try_start_0
    invoke-virtual {p0, v13}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2318
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, v13, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v4, p1

    move/from16 v8, p5

    move/from16 v12, p9

    invoke-interface/range {v2 .. v12}, Lorg/codeaurora/ims/IImsRadio;->setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2321
    iget v0, v13, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to IImsRadio: Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 2486
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    return-void
.end method


# virtual methods
.method public abortConference(Landroid/os/Message;I)V
    .locals 3

    const/16 v0, 0x49

    .line 2033
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2034
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2036
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    .line 2040
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x6

    const/4 v0, 0x0

    .line 2041
    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void

    .line 2045
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2047
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2048
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p2}, Lorg/codeaurora/ims/IImsRadio;->abortConference(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 2050
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2051
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public acceptCall(Landroid/os/Message;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1584
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;II)V

    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 1

    const/4 v0, 0x2

    .line 1589
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;III)V

    return-void
.end method

.method public acceptCall(Landroid/os/Message;III)V
    .locals 4

    const-string v0, "rtt mode : "

    const/4 v1, 0x3

    .line 1595
    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1597
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 1599
    invoke-direct {p0, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1603
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1605
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1606
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v3, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadio;->answer(IIII)V

    .line 1607
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " and ipPresentation: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to HAL"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1610
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "request to IImsRadio: Exception: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public acknowledgeSms(IILandroid/os/Message;)V
    .locals 3

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "acknowledgeSms: messageRef: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3a

    .line 1661
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1664
    invoke-static {v0, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p3

    .line 1665
    invoke-direct {p0, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1670
    :cond_0
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1671
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->acknowledgeSms(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1673
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "request to ImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1675
    :goto_0
    invoke-virtual {p3}, Lorg/codeaurora/ims/IFRequest;->release()V

    return-void
.end method

.method public acknowledgeSmsReport(IILandroid/os/Message;)V
    .locals 3

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "acknowledgeSmsReport: messageRef: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3b

    .line 1682
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1685
    invoke-static {v0, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p3

    .line 1687
    invoke-direct {p0, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1692
    :cond_0
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1693
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->acknowledgeSmsReport(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1695
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to ImsRadioV12: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1697
    :goto_0
    invoke-virtual {p3}, Lorg/codeaurora/ims/IFRequest;->release()V

    return-void
.end method

.method public addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 3

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addParticipant address = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    const/16 v0, 0x1c

    .line 1421
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1422
    invoke-static {v0, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p4

    .line 1424
    invoke-direct {p0, p4, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1428
    :cond_0
    invoke-direct {p0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1431
    :try_start_0
    invoke-virtual {p0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1432
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p4, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadio;->addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1434
    iget p2, p4, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1435
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public cancelModifyCall(Landroid/os/Message;I)V
    .locals 3

    .line 1929
    const-string v0, "cancelModifyCall"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x38

    .line 1931
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1932
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 1934
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1938
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1940
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request to ImsRadio - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1943
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p2}, Lorg/codeaurora/ims/IImsRadio;->cancelModifyCall(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1945
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1946
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 3

    .line 1563
    const-string v0, "Cancel pending USSD"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    const/16 v0, 0x41

    .line 1565
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1566
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 1568
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1572
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1574
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1575
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->cancelPendingUssd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1577
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3

    const/16 v0, 0xa

    .line 2014
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2015
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2017
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2021
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2023
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2024
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->conference(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2026
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2027
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deflect call to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "connid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 1618
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1619
    invoke-static {v0, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p3

    .line 1621
    invoke-direct {p0, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1625
    :cond_0
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1627
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1628
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->deflectCall(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1630
    iget p2, p3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1631
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "request to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v8, p6

    .line 1464
    invoke-virtual/range {v0 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V

    return-void
.end method

.method public dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V
    .locals 12

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dial Request - address= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clirMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callDetails= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isEncrypted= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " redialInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 1474
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3e

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    .line 1476
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x3f

    .line 1479
    :cond_1
    :goto_0
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p8

    .line 1480
    invoke-static {v0, v2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v11

    .line 1482
    invoke-direct {p0, v11, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1486
    :cond_2
    invoke-direct {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1488
    :try_start_0
    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request to IImsRadio - token = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1490
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v10}, Lorg/codeaurora/ims/IImsRadio;->dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1494
    iget p2, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1495
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 308
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRegistrants()V

    .line 309
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-nez p0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-interface {p0}, Lorg/codeaurora/ims/IImsRadio;->dispose()V

    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3

    .line 2397
    const-string v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 2399
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2400
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2402
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2406
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2408
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2409
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2411
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2412
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public exitScbm(Landroid/os/Message;)V
    .locals 3

    .line 2417
    const-string v0, "exitScbm"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x45

    .line 2419
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2420
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2422
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 2426
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2427
    invoke-direct {p0, p1, v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void

    .line 2431
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2433
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2434
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->exitSmsCallBackMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2436
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 8

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "explicitCallTransfer srcCallId= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " number= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "destCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 2060
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2061
    invoke-static {v0, p5}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p5

    .line 2063
    invoke-direct {p0, p5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2067
    :cond_0
    invoke-direct {p0, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2069
    :try_start_0
    invoke-virtual {p0, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2070
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, p5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lorg/codeaurora/ims/IImsRadio;->explicitCallTransfer(IIILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2073
    iget p2, p5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2074
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "request to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0

    .line 2783
    const-string p1, "explicitCallTransfer : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 2

    .line 2191
    const-string v0, "getCLIR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 2193
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2194
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2196
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2200
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2202
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2203
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadio;->getClir(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2205
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2206
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "GetClir request to IImsRadio: Exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 2

    .line 2512
    const-string v0, "getCOLR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x21

    .line 2514
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2515
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2517
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2521
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2523
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2524
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadio;->getColr(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2526
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2527
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "GetColr request to IImsRadio: Exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 0

    .line 2775
    const-string p1, "getCurrentCalls : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getHandoverConfig(Landroid/os/Message;)V
    .locals 0

    .line 2665
    const-string p0, "ImsSenderRxr"

    const-string p1, "getHandoverConfig : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x1

    .line 1870
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1871
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 1873
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1877
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1879
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1880
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->getImsRegistrationState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1882
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getImsSubConfig(Landroid/os/Message;)V
    .locals 3

    .line 2606
    const-string v0, "getImsSubConfig"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x36

    .line 2608
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2609
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2611
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2615
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2617
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2618
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->getImsSubConfig(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2620
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2621
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getIncomingSmsRegistrant()Lorg/codeaurora/telephony/utils/Registrant;
    .locals 0

    .line 716
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object p0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 0

    .line 2767
    const-string p1, "getLastCallFailCause : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getPacketCount(Landroid/os/Message;)V
    .locals 3

    .line 2566
    const-string v0, "getPacketCount"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x28

    .line 2568
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2569
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2571
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2575
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2577
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2578
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->getRtpStatistics(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2580
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getPacketErrorCount(Landroid/os/Message;)V
    .locals 3

    .line 2586
    const-string v0, "getPacketErrorCount"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x29

    .line 2588
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2589
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2591
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2595
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2597
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2598
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->getRtpErrorStatistics(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2600
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2601
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getSendSmsStatusReportRegistrant()Lorg/codeaurora/telephony/utils/Registrant;
    .locals 0

    .line 721
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object p0
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 3

    .line 1702
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 1704
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to getSmsFormat. Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x3

    .line 2455
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    return-void
.end method

.method public getWifiCallingPreference(Landroid/os/Message;)V
    .locals 0

    .line 2656
    const-string p1, "getWifiCallingPreference : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 8

    const v5, 0x7fffffff

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    .line 1731
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0

    .line 2787
    const-string p1, "hangupForegroundResumeBackground : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0

    .line 2771
    const-string p1, "hangupWaitingOrBackground : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V
    .locals 11

    const/4 v0, 0x4

    .line 1738
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p7

    .line 1739
    invoke-static {v0, v2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v2

    .line 1741
    invoke-direct {p0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1745
    :cond_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1747
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1748
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lorg/codeaurora/ims/IImsRadio;->hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1751
    iget p2, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1752
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "request to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public hold(Landroid/os/Message;I)V
    .locals 3

    const/16 v0, 0x25

    .line 1972
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1973
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 1975
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1979
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1981
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request to ImsRadio - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1984
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p2}, Lorg/codeaurora/ims/IImsRadio;->hold(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1986
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " request to IImsRadio: Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isAidlReorderingSupported()Z
    .locals 0

    .line 375
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsAidlReorderingSupported:Z

    return p0
.end method

.method public isCrbtSupported()Z
    .locals 0

    .line 379
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsCrbtSupported:Z

    return p0
.end method

.method public isCrsSupported()Z
    .locals 1

    .line 391
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isFeatureSupported(I)Z
    .locals 3

    .line 401
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mQtiRadioConfigHal:Lorg/codeaurora/ims/IQtiRadioConfig;

    if-nez v2, :cond_0

    goto :goto_1

    .line 405
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mQtiRadioConfigHal:Lorg/codeaurora/ims/IQtiRadioConfig;

    .line 406
    invoke-interface {p0, p1}, Lorg/codeaurora/ims/IQtiRadioConfig;->isFeatureSupported(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 408
    const-string p1, "ImsSenderRxr"

    const-string v0, "isFeatureSupported Failed"

    invoke-static {p1, v0, p0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return v1
.end method

.method public isSimultaneousCallingSupported()Z
    .locals 0

    .line 383
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsSimultaneousCallingSupported:Z

    return p0
.end method

.method public isSmsSupported()Z
    .locals 1

    .line 387
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result p0

    return p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[SUB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V
    .locals 2

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    .line 1382
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1383
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1385
    const-string v1, "Unimplemented method. Stack trace: "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 1

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[SUB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "modifyCallConfirm callModify= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x12

    .line 1953
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1954
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 1956
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1960
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1962
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1963
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p2}, Lorg/codeaurora/ims/IImsRadio;->modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1965
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1966
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "modifyCallInitiate callModify= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 1911
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1912
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 1914
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1918
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1920
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1921
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p2}, Lorg/codeaurora/ims/IImsRadio;->modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1923
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1924
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 2

    .line 2357
    const-string v0, "queryClip"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x13

    .line 2359
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2360
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2362
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2366
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2368
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2369
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadio;->getClip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2371
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2372
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "GetClip request to IImsRadio: Exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2328
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;Z)V

    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;Z)V
    .locals 8

    .line 2334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCallForwardStatus cfReason= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expectMore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x16

    .line 2338
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2339
    invoke-static {v0, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p4

    .line 2341
    invoke-direct {p0, p4, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2345
    :cond_0
    invoke-direct {p0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2347
    :try_start_0
    invoke-virtual {p0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2348
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, p4, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/codeaurora/ims/IImsRadio;->queryCallForwardStatus(IIILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2351
    iget p2, p4, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2352
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCallWaiting serviceClass = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x18

    .line 2233
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2235
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2237
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2241
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2243
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2244
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->getCallWaiting(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2246
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "request to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    const/4 p2, 0x3

    .line 2444
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    return-void
.end method

.method public queryIncomingCallBarring(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    .line 2275
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public queryMultiSimVoiceCapability(Landroid/os/Message;)V
    .locals 3

    .line 2626
    const-string v0, "queryMultiSimVoiceCapability"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x44

    .line 2628
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2629
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2631
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 2635
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2636
    invoke-direct {p0, p1, v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void

    .line 2640
    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsSimultaneousCallingSupported:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 2641
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void

    .line 2645
    :cond_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2647
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2648
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->queryMultiSimVoiceCapability(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2650
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryServiceStatus(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0x1d

    .line 1758
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1759
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 1761
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1765
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1767
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1768
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadio;->queryServiceStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1770
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1771
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Serivce status query request to IImsRadio: Exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 3

    .line 2696
    const-string v0, "querySsacStatus"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x31

    .line 2698
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2699
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2701
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2705
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2707
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2708
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->querySsacStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2710
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2711
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryVirtualLineInfo(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryVirtualLineInfo = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3d

    .line 2830
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2831
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2833
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2836
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2838
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2839
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2841
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2842
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to IImsRadio V1.4: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryVoltePref(Landroid/os/Message;)V
    .locals 3

    .line 2740
    const-string v0, "queryVoltePref"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x33

    .line 2742
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2743
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2745
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2749
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2751
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2752
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->queryVoltePref(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2754
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 3

    .line 2674
    const-string v0, "queryVopsStatus"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x30

    .line 2676
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2677
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 2679
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2683
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2685
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2686
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->queryVopsStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2688
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request to IImsRadio: Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerForCallAutoRejection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 585
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 586
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForCiwlanNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 676
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForConferenceCallStateCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 632
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 633
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForGeoLocationDataStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 614
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 615
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 487
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 488
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 451
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 452
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForImsServiceDown(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 704
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 705
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/codeaurora/ims/IImsRadio;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 706
    :cond_1
    :goto_0
    sget-object p1, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceDown(Ljava/lang/String;)V

    return-void
.end method

.method public registerForImsServiceUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 693
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 694
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/codeaurora/ims/IImsRadio;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 695
    sget-object p1, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceUp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerForImsSubConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 414
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForIncomingDtmfStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 650
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 651
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForIncomingDtmfStop(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 659
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 660
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 1063
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 1064
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForMultiIdentityInfoPendingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 601
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 602
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 595
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 596
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 668
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 1072
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 1073
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 505
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 506
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 460
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 461
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 514
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 515
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForRttMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 2792
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSipDtmfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 554
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 555
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForSmsCallbackModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 641
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 642
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForSrtpEncryptionUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 684
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 685
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForSrvDomainChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 623
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 624
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 469
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 470
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 422
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 423
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 534
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-void
.end method

.method public registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 478
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 479
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForUssdInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 545
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 546
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 496
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 497
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForVoiceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 2800
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 431
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 432
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForWfcRoamingModeFeatureSupport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 440
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 441
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 442
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance p2, Lorg/codeaurora/telephony/utils/AsyncResult;

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    .line 443
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0, p3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 442
    invoke-virtual {p1, p2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 0

    .line 2762
    const-string p1, "rejectCall : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 2848
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerMultiIdentityLines = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 2850
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2851
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2853
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2857
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2859
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2860
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->registerMultiIdentityLines(ILjava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2862
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2863
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resume(Landroid/os/Message;I)V
    .locals 3

    const/16 v0, 0x26

    .line 1993
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1994
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p1

    .line 1996
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2000
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2002
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request to ImsRadio - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2005
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p2}, Lorg/codeaurora/ims/IImsRadio;->resume(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 2007
    iget p1, p1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " request to IImsRadio: Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V
    .locals 10

    .line 2080
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    .line 2081
    invoke-static {p1, v0}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v2

    .line 2083
    invoke-direct {p0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2087
    :cond_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2089
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " request to ImsRadio: token "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " request type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    .line 2093
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lorg/codeaurora/ims/IImsRadio;->getConfig(IIZILjava/lang/String;I)V

    return-void

    .line 2095
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lorg/codeaurora/ims/IImsRadio;->setConfig(IIZILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2098
    iget p2, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2099
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " request to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendDtmf(ICLandroid/os/Message;)V
    .locals 3

    const/16 v0, 0xd

    .line 2105
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2106
    invoke-static {v0, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p3

    .line 2108
    invoke-direct {p0, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2112
    :cond_0
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2114
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2115
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->sendDtmf(IIC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2117
    iget p2, p3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V
    .locals 9

    const-string v0, "sendGeolocationInfo: lat: "

    monitor-enter p0

    .line 1711
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " lon: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " address: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2e

    .line 1713
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1714
    invoke-static {v0, p6}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p6

    .line 1715
    invoke-direct {p0, p6, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1716
    monitor-exit p0

    return-void

    .line 1718
    :cond_0
    :try_start_1
    invoke-direct {p0, p6}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1721
    :try_start_2
    invoke-virtual {p0, p6}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1722
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, p6, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lorg/codeaurora/ims/IImsRadio;->sendGeolocationInfo(IDDLandroid/location/Address;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1724
    :try_start_3
    iget p2, p6, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1725
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1727
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 3

    const/16 v0, 0x1a

    .line 1889
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1890
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 1892
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1896
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1898
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request to ImsRadio - token:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RegState"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1901
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->requestRegistrationChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1903
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1904
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " request to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 2808
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: sendRttMessage msg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x37

    .line 2810
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2811
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2813
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2817
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2819
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2820
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->sendRttMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2822
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2823
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendSipDtmf(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send Sip Dtmf Request - requestCode- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    const/16 v0, 0x42

    .line 1537
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1538
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 1539
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1543
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x30

    const/4 v0, 0x0

    .line 1544
    invoke-direct {p0, p2, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void

    .line 1548
    :cond_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1550
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1551
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1553
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendSms(ILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
    .locals 9

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendSms over IImsRadio with format:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x39

    .line 1640
    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1641
    invoke-static {v1, p6}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p6

    .line 1643
    invoke-direct {p0, p6, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1647
    :cond_0
    invoke-direct {p0, p6}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1649
    :try_start_0
    invoke-virtual {p0, p6}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1650
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, p6, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lorg/codeaurora/ims/IImsRadio;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1652
    iget p2, p6, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1653
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "to ImsRadioV12: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendUssd(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USSD Request - address- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    const/16 v0, 0x40

    .line 1507
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1508
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 1510
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1514
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1515
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    const/16 v0, 0x2f

    invoke-direct {p0, p2, v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void

    .line 1519
    :cond_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1521
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1522
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->sendUssd(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1524
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1525
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;Landroid/os/Message;)V
    .locals 3

    const/16 v0, 0x47

    .line 2928
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2929
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2930
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    .line 2934
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x6

    const/4 v0, 0x0

    .line 2935
    invoke-direct {p0, p2, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void

    .line 2939
    :cond_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2941
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2942
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->sendVosActionInfo(ILorg/codeaurora/ims/VosActionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2944
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2945
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendVosSupportStatus(ZLandroid/os/Message;)V
    .locals 3

    const/16 v0, 0x46

    .line 2899
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2900
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2901
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    .line 2905
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x6

    const/4 v0, 0x0

    .line 2906
    invoke-direct {p0, p2, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void

    .line 2910
    :cond_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2912
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2913
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->sendVosSupportStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2915
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2916
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3

    .line 2211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCLIR clirmode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x15

    .line 2213
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2214
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2216
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2220
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2222
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2223
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->setClir(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2225
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 3

    .line 2532
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCOLR presentationValue = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 2534
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2535
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2537
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2541
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2543
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2544
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->setColr(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2546
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2547
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 13

    .line 2286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCallForward cfReason= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    move-object v2, p0

    move v7, p1

    move v8, p2

    move-object/from16 v12, p6

    .line 2289
    invoke-direct/range {v2 .. v12}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    .line 2296
    invoke-direct/range {v0 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3

    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCallWaiting enable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x19

    .line 2256
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2258
    invoke-static {v0, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p3

    .line 2260
    invoke-direct {p0, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2264
    :cond_0
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2266
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2267
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->setCallWaiting(IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2269
    iget p2, p3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "request to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 2451
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    return-void
.end method

.method public setGlassesFree3dVideoCapability(ZLandroid/os/Message;)V
    .locals 3

    .line 2957
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setGlassesFree3dVideoCapability = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x48

    .line 2959
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2960
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2961
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 2965
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x6

    const/4 v0, 0x0

    .line 2966
    invoke-direct {p0, p2, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void

    .line 2970
    :cond_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2972
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2973
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->setGlassesFree3dVideoCapability(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2975
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2976
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setHandoverConfig(ILandroid/os/Message;)V
    .locals 0

    .line 2669
    const-string p0, "ImsSenderRxr"

    const-string p1, "setHandoverConfig : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIncomingCallBarring(ILjava/lang/String;[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 2281
    invoke-static {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual/range {p0 .. p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setMediaConfigurationRequest(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/os/Message;)V
    .locals 3

    const/16 v0, 0x43

    .line 2870
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2871
    invoke-static {v0, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p4

    .line 2872
    invoke-direct {p0, p4, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2876
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x6

    const/4 p2, 0x0

    .line 2877
    invoke-direct {p0, p4, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void

    .line 2881
    :cond_1
    invoke-direct {p0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2883
    :try_start_0
    invoke-virtual {p0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2884
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p4, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadio;->setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2886
    iget p2, p4, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2887
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOnImsSmsStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 574
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-void
.end method

.method public setOnIncomingImsSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 563
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 523
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-void
.end method

.method public setPhoneType(I)V
    .locals 2

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPhoneType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1413
    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    return-void
.end method

.method public setServiceStatus(Landroid/os/Message;Ljava/util/ArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x1e

    .line 1778
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1780
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v2

    const-string v3, "SetServiceStatus request to IImsRadio: Exception: "

    const-string v4, " to ImsRadio: token -"

    if-eqz v2, :cond_1

    .line 1781
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1782
    invoke-direct {p0, v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 1790
    :cond_0
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v2

    .line 1792
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    iput-object v5, v2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1794
    iput-object p2, v2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1796
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 1797
    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1803
    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1804
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1805
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " RestrictCause:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1809
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, v0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p2, p3}, Lorg/codeaurora/ims/IImsRadio;->setServiceStatus(ILjava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p3

    .line 1812
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1813
    iget p1, v0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(ILjava/lang/Object;)V

    .line 1814
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1817
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/CapabilityStatus;

    .line 1818
    invoke-static {v0, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v6

    .line 1819
    invoke-direct {p0, v6, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 1828
    :cond_2
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v7

    .line 1830
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v8

    iput-object v8, v7, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1833
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1834
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1836
    iput-object v8, v7, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1839
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 1840
    iput-object v7, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1846
    invoke-virtual {v6, v9}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1847
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1848
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "SetServiceStatus capabilityStatus: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1853
    :try_start_1
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v7, v6, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v5, v7, v8, p3}, Lorg/codeaurora/ims/IImsRadio;->setServiceStatus(ILjava/util/List;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p3

    .line 1857
    invoke-virtual {v6, p1}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1858
    iget p1, v6, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(ILjava/lang/Object;)V

    .line 1859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 3

    .line 2170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSuppServiceNotifications enable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x1b

    .line 2172
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2174
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2176
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2180
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2182
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2183
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->setSuppServiceNotification(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2185
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "request to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 2460
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 3

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUiTTYMode uittyMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x27

    .line 2379
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2380
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2382
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2386
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2388
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2389
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->setUiTtyMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2391
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setWifiCallingPreference(IILandroid/os/Message;)V
    .locals 0

    .line 2661
    const-string p1, "setWifiCallingPreference : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public startDtmf(ICLandroid/os/Message;)V
    .locals 3

    const/16 v0, 0xe

    .line 2124
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2125
    invoke-static {v0, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p3

    .line 2127
    invoke-direct {p0, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2131
    :cond_0
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2133
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2134
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->startDtmf(IIC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2136
    iget p2, p3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopDtmf(ILandroid/os/Message;)V
    .locals 3

    const/16 v0, 0xf

    .line 2143
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2144
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2146
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2150
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2152
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2153
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->stopDtmf(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2155
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public suppSvcStatus(IILandroid/os/Message;)V
    .locals 8

    .line 2471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "suppSvcStatus operationType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, p3

    .line 2473
    invoke-direct/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8

    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "suppSvcStatus operationType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serviceClassValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    .line 2467
    invoke-direct/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2

    .line 2478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "suppSvcStatus operationType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serviceClassValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2480
    invoke-direct/range {p0 .. p6}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V
    .locals 11

    const/16 v0, 0x1f

    .line 2493
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p6

    .line 2494
    invoke-static {v0, v2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v2

    .line 2496
    invoke-direct {p0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2500
    :cond_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2502
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2503
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lorg/codeaurora/ims/IImsRadio;->suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2506
    iget p2, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2507
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "to IImsRadio: Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0

    .line 2779
    const-string p1, "switchWaitingOrHoldingAndActive : Not supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public unSetImsSmsStatusReport(Landroid/os/Handler;)V
    .locals 0

    .line 578
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz p1, :cond_0

    .line 579
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    const/4 p1, 0x0

    .line 580
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    :cond_0
    return-void
.end method

.method public unSetIncomingImsSms(Landroid/os/Handler;)V
    .locals 0

    .line 567
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz p1, :cond_0

    .line 568
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    const/4 p1, 0x0

    .line 569
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    :cond_0
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0

    .line 527
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    const/4 p1, 0x0

    .line 529
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    :cond_0
    return-void
.end method

.method public unregisterForCallAutoRejection(Landroid/os/Handler;)V
    .locals 0

    .line 590
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCiwlanNotification(Landroid/os/Handler;)V
    .locals 0

    .line 680
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForConferenceCallStateCompleted(Landroid/os/Handler;)V
    .locals 0

    .line 637
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForGeoLocationDataStatus(Landroid/os/Handler;)V
    .locals 0

    .line 619
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForGeolocationRequest(Landroid/os/Handler;)V
    .locals 0

    .line 492
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 0

    .line 456
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImsServiceDown(Landroid/os/Handler;)V
    .locals 0

    .line 711
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImsServiceUp(Landroid/os/Handler;)V
    .locals 0

    .line 700
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImsSubConfigChanged(Landroid/os/Handler;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIncomingDtmfStart(Landroid/os/Handler;)V
    .locals 0

    .line 655
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIncomingDtmfStop(Landroid/os/Handler;)V
    .locals 0

    .line 664
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 0

    .line 1068
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMultiIdentityPendingInfoRequest(Landroid/os/Handler;)V
    .locals 0

    .line 610
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;)V
    .locals 0

    .line 606
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V
    .locals 0

    .line 672
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMwi(Landroid/os/Handler;)V
    .locals 0

    .line 1077
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForParticipantStatusInfo(Landroid/os/Handler;)V
    .locals 0

    .line 510
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRefreshConfInfo(Landroid/os/Handler;)V
    .locals 0

    .line 465
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRegistrationBlockStatus(Landroid/os/Handler;)V
    .locals 0

    .line 519
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRttMessage(Landroid/os/Handler;)V
    .locals 0

    .line 2796
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSipDtmfInfo(Landroid/os/Handler;)V
    .locals 0

    .line 559
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSmsCallbackModeChanged(Landroid/os/Handler;)V
    .locals 0

    .line 646
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSrtpEncryptionUpdate(Landroid/os/Handler;)V
    .locals 0

    .line 689
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSrvDomainChanged(Landroid/os/Handler;)V
    .locals 0

    .line 628
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 0

    .line 474
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSsacStatusChanged(Landroid/os/Handler;)V
    .locals 0

    .line 427
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSuppServiceIndication(Landroid/os/Handler;)V
    .locals 0

    .line 538
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz p1, :cond_0

    .line 539
    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    const/4 p1, 0x0

    .line 540
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    :cond_0
    return-void
.end method

.method public unregisterForTtyStatusChanged(Landroid/os/Handler;)V
    .locals 0

    .line 483
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForUssdInfo(Landroid/os/Handler;)V
    .locals 0

    .line 550
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V
    .locals 0

    .line 501
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceInfo(Landroid/os/Handler;)V
    .locals 0

    .line 2804
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVopsStatusChanged(Landroid/os/Handler;)V
    .locals 0

    .line 436
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForWfcRoamingModeFeatureSupport(Landroid/os/Handler;)V
    .locals 0

    .line 447
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unsljLog(I)V
    .locals 2

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[UNSL]< "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    return-void
.end method

.method public unsljLogMore(ILjava/lang/String;)V
    .locals 2

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[UNSL]< "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[UNSL]< "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[UNSL]< "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public updateVoltePref(ILandroid/os/Message;)V
    .locals 3

    .line 2718
    const-string v0, "updateVoltePref"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    const/16 v0, 0x32

    .line 2720
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2721
    invoke-static {v0, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object p2

    .line 2723
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2727
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2729
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2730
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lorg/codeaurora/ims/IImsRadio;->updateVoltePref(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2732
    iget p2, p2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2733
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "request to IImsRadio: Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
