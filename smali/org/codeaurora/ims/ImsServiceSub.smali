.class public Lorg/codeaurora/ims/ImsServiceSub;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "ImsServiceSub.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
.implements Lorg/codeaurora/ims/ICallListListener;
.implements Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;
.implements Lorg/codeaurora/ims/ImsRegistrationController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;,
        Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;,
        Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_CIWLAN_NOTIFICATION:Ljava/lang/String; = "com.qti.phone.action.ACTION_DISABLE_CIWLAN_NOTIFICATION"

.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final CIWLAN_EXIT_NOTIFICATION_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final CIWLAN_EXIT_NOTIFICATION_PHONE_ID:Ljava/lang/String; = "CIWLAN_EXIT_NOTIFICATION_PHONE_ID"

.field private static final CIWLAN_EXIT_NOTIFICATION_RECEIVER_NAME:Ljava/lang/String; = "com.android.settings.network.telephony.CiwlanNotificationReceiver"

.field private static final CIWLAN_EXIT_NOTIFICATION_STATUS:Ljava/lang/String; = "CIWLAN_EXIT_NOTIFICATION_STATUS"

.field private static final INVALID_CALL_TYPE:I = -0x2

.field private static final INVALID_RAT_VALUE:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSub"


# instance fields
.field private final EVENT_CALL_AUTO_REJECT:I

.field private final EVENT_CALL_MODIFY:I

.field private final EVENT_CALL_STATE_CHANGE:I

.field private final EVENT_CANCEL_MODIFY_CALL:I

.field private final EVENT_CIWLAN_NOTIFICATION:I

.field private final EVENT_EXIT_SCBM:I

.field private final EVENT_GEOLOCATION_INFO_REQUEST:I

.field private final EVENT_GEOLOCATION_RESPONSE:I

.field private final EVENT_GET_CALL_BARRING_DONE:I

.field private final EVENT_GET_CALL_FORWARD_DONE:I

.field private final EVENT_GET_CALL_FORWARD_TIMER:I

.field private final EVENT_GET_CURRENT_CALLS:I

.field private final EVENT_GET_HANDOVER_CONFIG:I

.field private final EVENT_GET_SRV_STATUS:I

.field private final EVENT_GET_VOLTE_PREF:I

.field private final EVENT_HANDOVER_STATE_CHANGED:I

.field private final EVENT_MWI:I

.field private final EVENT_PARTICIPANT_STATUS_INFO:I

.field private final EVENT_PRE_ALERTING_INFO:I

.field private final EVENT_SEND_AUTO_REJECT:I

.field private final EVENT_SEND_UI_TTY_MODE:I

.field private final EVENT_SEND_VOS_ACTION_INFO:I

.field private final EVENT_SEND_VOS_SUPPORT_STATUS:I

.field private final EVENT_SET_CALL_FORWARD_TIMER:I

.field private final EVENT_SET_GLASSES_FREE_3D_VIDEO_CAPABILITY:I

.field private final EVENT_SET_HANDOVER_CONFIG:I

.field private final EVENT_SET_IMS_STATE:I

.field private final EVENT_SET_MEDIA_CONFIG:I

.field private final EVENT_SET_SRV_STATUS:I

.field private final EVENT_SET_VOLTE_PREF:I

.field private final EVENT_SMS_CALLBACK_MODE_CHANGED:I

.field private final EVENT_SRV_STATUS_UPDATE:I

.field private final EVENT_SSAC_CHANGED:I

.field private final EVENT_SSAC_RESPONSE:I

.field private final EVENT_SUPP_SRV_UPDATE:I

.field private final EVENT_TTY_STATE_CHANGED:I

.field private final EVENT_USSD_MESSAGE_RECEIVED:I

.field private final EVENT_VOPS_CHANGED:I

.field private final EVENT_VOPS_RESPONSE:I

.field private final EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

.field private final EVENT_WFC_ROAMING_CONFIGURATION:I

.field private final SSAC_VOICE_BARRING_ZERO:I

.field private mArController:Lorg/codeaurora/ims/ImsArControllerImpl;

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

.field private mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfController:Lorg/codeaurora/ims/ImsConferenceController;

.field private mContext:Landroid/content/Context;

.field private mCrsCrbtController:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

.field private mDataChannelCapabilityListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

.field private mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFeatureIsOpen:Z

.field private mHandler:Landroid/os/Handler;

.field private mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

.field private mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

.field private mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

.field private mImsRat:I

.field private mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

.field private mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

.field private mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

.field private mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

.field private mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

.field private mIsSsacVoiceBarred:Z

.field private mIsVopsEnabled:Z

.field private mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mModemSupportForWfcRoamingConfiguration:Z

.field private mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

.field private mMwiResponse:Lorg/codeaurora/ims/Mwi;

.field protected mPhoneId:I

.field private mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryingServiceStatus:Z

.field private mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

.field private mSubController:Lorg/codeaurora/ims/ImsSubController;

.field private mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;


# direct methods
.method public static synthetic $r8$lambda$MqWtdVJ1hjXvFDP5IuJBHiuRXJg(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->lambda$handleNotifyIncomingCall$3(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mr_u4p2pQdkLATGP2h5IF5YT_vg(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->lambda$handleCallAutoReject$2(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/DriverCallIms;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCapabilityCallback(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueryingServiceStatus(Lorg/codeaurora/ims/ImsServiceSub;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmQueryingServiceStatus(Lorg/codeaurora/ims/ImsServiceSub;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCallsListToClear(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallsListToClear()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetImsInterfaceListener(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleCallAutoReject(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCallAutoReject(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCalls(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCalls(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCancelModifyCallResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCancelModifyCallResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCiWlanNotification(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCiWlanNotification(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGeolocationRequest(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationRequest(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGeolocationResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHandover(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleHandover(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleModifyCallRequest(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMwiNotification(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleMwiNotification(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePreAlertingCallInfo(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handlePreAlertingCallInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleQueryVoltePrefResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleQueryVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendVosActionInfoResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSendVosActionInfoResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendVosSupportStatusResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSendVosSupportStatusResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetGlassesFree3dVideoCapabilityResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSetGlassesFree3dVideoCapabilityResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSmsCallbackModeChanged(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSmsCallbackModeChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSrvStatusUpdate(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSsac(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsac(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSsacResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSuppSvc(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSuppSvc(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTtyModeChange(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleTtyModeChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateVoltePrefResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleUpdateVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUssdReceived(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleUssdReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVoWiFiCallQuality(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVoWiFiCallQuality(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVops(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVops(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVopsResponse(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWfcRoamingConfiguration(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleWfcRoamingConfiguration(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitServiceStatus(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misImsExceptionRadioNotAvailable(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogd(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloge(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogi(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monExitScbmDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onExitScbmDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetCallBarringReqDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetCallBarringReqDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetCallForwardReqDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetCallForwardReqDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetCallForwardTimerDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetHandoverConfigDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetCallForwardTimerDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetHandoverConfigDone(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendGeolocationResponse(Lorg/codeaurora/ims/ImsServiceSub;DDLandroid/location/Address;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/codeaurora/ims/ImsServiceSub;->sendGeolocationResponse(DDLandroid/location/Address;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I
    .locals 0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;)V
    .locals 6

    .line 282
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 123
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    .line 124
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 125
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    const/4 v1, 0x0

    .line 133
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 135
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 136
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 137
    iput v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->SSAC_VOICE_BARRING_ZERO:I

    .line 138
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    .line 149
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 152
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 159
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    const/4 v2, 0x1

    .line 162
    iput v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_STATE_CHANGE:I

    const/4 v3, 0x4

    .line 163
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRV_STATUS_UPDATE:I

    const/4 v3, 0x5

    .line 164
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_SRV_STATUS:I

    const/4 v3, 0x6

    .line 165
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_SRV_STATUS:I

    const/4 v3, 0x7

    .line 166
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CURRENT_CALLS:I

    const/16 v3, 0x8

    .line 167
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SUPP_SRV_UPDATE:I

    const/16 v3, 0x9

    .line 168
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_IMS_STATE:I

    const/16 v3, 0xa

    .line 169
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_TTY_STATE_CHANGED:I

    const/16 v3, 0xc

    .line 171
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_HANDOVER_STATE_CHANGED:I

    const/16 v3, 0xd

    .line 172
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_MODIFY:I

    const/16 v3, 0xe

    .line 173
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_MWI:I

    const/16 v3, 0x10

    .line 174
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_CALL_FORWARD_TIMER:I

    const/16 v3, 0x11

    .line 175
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CALL_FORWARD_TIMER:I

    const/16 v3, 0x12

    .line 176
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CALL_FORWARD_DONE:I

    const/16 v3, 0x13

    .line 177
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CALL_BARRING_DONE:I

    const/16 v3, 0x15

    .line 178
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_INFO_REQUEST:I

    const/16 v3, 0x16

    .line 179
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_RESPONSE:I

    const/16 v3, 0x17

    .line 180
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

    const/16 v3, 0x19

    .line 181
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_CHANGED:I

    const/16 v3, 0x1a

    .line 182
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_CHANGED:I

    const/16 v3, 0x1b

    .line 183
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_RESPONSE:I

    const/16 v3, 0x1c

    .line 184
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_RESPONSE:I

    const/16 v3, 0x1d

    .line 185
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_PARTICIPANT_STATUS_INFO:I

    const/16 v3, 0x1e

    .line 186
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_VOLTE_PREF:I

    const/16 v3, 0x1f

    .line 187
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_VOLTE_PREF:I

    const/16 v3, 0x20

    .line 188
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_HANDOVER_CONFIG:I

    const/16 v3, 0x21

    .line 189
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_HANDOVER_CONFIG:I

    const/16 v3, 0x23

    .line 190
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CANCEL_MODIFY_CALL:I

    const/16 v3, 0x24

    .line 191
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_AUTO_REJECT:I

    const/16 v3, 0x25

    .line 192
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_WFC_ROAMING_CONFIGURATION:I

    const/16 v3, 0x26

    .line 193
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_USSD_MESSAGE_RECEIVED:I

    const/16 v3, 0x27

    .line 194
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SEND_AUTO_REJECT:I

    const/16 v3, 0x28

    .line 195
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SEND_UI_TTY_MODE:I

    const/16 v3, 0x29

    .line 196
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_PRE_ALERTING_INFO:I

    const/16 v3, 0x2a

    .line 197
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SMS_CALLBACK_MODE_CHANGED:I

    const/16 v3, 0x2b

    .line 198
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_MEDIA_CONFIG:I

    const/16 v3, 0x2c

    .line 199
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_EXIT_SCBM:I

    const/16 v3, 0x2d

    .line 200
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CIWLAN_NOTIFICATION:I

    const/16 v3, 0x2e

    .line 201
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SEND_VOS_SUPPORT_STATUS:I

    const/16 v3, 0x2f

    .line 202
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SEND_VOS_ACTION_INFO:I

    const/16 v3, 0x30

    .line 203
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_GLASSES_FREE_3D_VIDEO_CAPABILITY:I

    const/4 v3, -0x1

    .line 212
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 213
    new-instance v4, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v4, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 214
    new-instance v4, Lorg/codeaurora/ims/CapabilityTracker;

    invoke-direct {v4}, Lorg/codeaurora/ims/CapabilityTracker;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    .line 217
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 218
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDataChannelCapabilityListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 220
    new-instance v0, Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-direct {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 221
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    .line 278
    iput v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    .line 283
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V

    .line 284
    iput p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 285
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 286
    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 287
    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 288
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "[phoneId="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] Constructor :: Registering with Sub Controller."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 290
    new-instance p4, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {p4, p0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 292
    new-instance p4, Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-direct {p4}, Lorg/codeaurora/ims/ImsRegistrationImpl;-><init>()V

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    .line 293
    new-instance p4, Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p4, p0, v0}, Lorg/codeaurora/ims/ImsEcbmImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 295
    new-instance p4, Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {p4, p0, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 297
    new-instance p4, Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {p4, v0, v2, p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 299
    new-instance p4, Lorg/codeaurora/ims/ImsSmsImpl;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p4, v0, v2, v3}, Lorg/codeaurora/ims/ImsSmsImpl;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

    .line 300
    new-instance p4, Lorg/codeaurora/ims/Mwi;

    invoke-direct {p4}, Lorg/codeaurora/ims/Mwi;-><init>()V

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 301
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    .line 303
    new-instance p4, Lorg/codeaurora/ims/ImsServiceStateReceiver;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p4, p0, v0, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 304
    new-instance p4, Landroid/content/IntentFilter;

    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {p4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 306
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v0, "org.codeaurora.intent.action.ESSENTIAL_RECORDS_LOADED"

    invoke-virtual {p4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, p4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 312
    iget-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual {p4, v1, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 313
    new-instance p4, Lorg/codeaurora/ims/ImsRegistrationController;

    invoke-direct {p4, p3, p1}, Lorg/codeaurora/ims/ImsRegistrationController;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    .line 314
    invoke-virtual {p4, p0}, Lorg/codeaurora/ims/ImsRegistrationController;->addListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V

    .line 315
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {p1, p0, p2}, Lorg/codeaurora/ims/ImsSubController;->registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;I)V

    .line 316
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->registerForImsEvents()V

    return-void
.end method

.method private broadcastCiwlanNotificationIntent(Z)V
    .locals 3

    .line 2522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "broadcastCiwlanNotificationIntent: show = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 2523
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2524
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qti.phone.action.ACTION_DISABLE_CIWLAN_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2525
    const-string v1, "CIWLAN_EXIT_NOTIFICATION_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2526
    const-string p1, "CIWLAN_EXIT_NOTIFICATION_PHONE_ID"

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2527
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.network.telephony.CiwlanNotificationReceiver"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2529
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 2531
    :cond_0
    const-string p1, "broadcastCiwlanNotificationIntent: invalid phoneId"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private broadcastSmsCallbackModeIntent(I)V
    .locals 3

    .line 2511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.SMS_CALLBACK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2514
    :goto_0
    sget-object p1, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_SMS_CALLBACK_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2515
    const-string p1, "android.telephony.extra.SLOT_INDEX"

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2516
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "broadcastSmsCallbackModeIntent mode: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PhoneId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2518
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string p1, "com.qti.permission.RECEIVE_SMS_CALLBACK_MODE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private broadcastVopsSsacIntent()V
    .locals 3

    .line 2243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2244
    const-string v1, "Vops"

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2245
    const-string v1, "Ssac"

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2246
    const-string v1, "phoneId"

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "broadcastVopsSsacIntent Vops = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , Ssac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , PhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2249
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2250
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private canAddCapability(III)Z
    .locals 4

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "canAddCapability capability: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , registrationTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mImsRat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v0, :cond_2

    .line 1164
    :cond_1
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    if-eq p3, v3, :cond_2

    return v1

    .line 1171
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "canAddCapability status: "

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    const/16 p3, 0x8

    if-ne p1, p3, :cond_4

    if-ne p2, v0, :cond_3

    .line 1173
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1174
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->isSmsSupported()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    if-eq p2, v0, :cond_6

    if-ne p2, v2, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2

    :cond_7
    :goto_1
    return v1
.end method

.method private static canChangeCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 937
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    .line 938
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result p0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    return v0

    :cond_1
    if-ne v1, v3, :cond_2

    return v3

    :cond_2
    return v0

    :cond_3
    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_5

    const/4 p0, 0x4

    if-ne v1, p0, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v3
.end method

.method private deregisterForImsEvents()V
    .locals 2

    .line 403
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForPreAlertingCallInfo(Landroid/os/Handler;)V

    .line 404
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForUssdInfo(Landroid/os/Handler;)V

    .line 405
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 406
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSrvStatusUpdate(Landroid/os/Handler;)V

    .line 407
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 408
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForHandoverStatusChanged(Landroid/os/Handler;)V

    .line 409
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForGeolocationRequest(Landroid/os/Handler;)V

    .line 410
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForVopsStatusChanged(Landroid/os/Handler;)V

    .line 411
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSsacStatusChanged(Landroid/os/Handler;)V

    .line 412
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForParticipantStatusInfo(Landroid/os/Handler;)V

    .line 413
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForCallAutoRejection(Landroid/os/Handler;)V

    .line 414
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V

    .line 415
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForWfcRoamingModeFeatureSupport(Landroid/os/Handler;)V

    .line 416
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 417
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForMwi(Landroid/os/Handler;)V

    .line 418
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForTtyStatusChanged(Landroid/os/Handler;)V

    .line 419
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForModifyCall(Landroid/os/Handler;)V

    .line 420
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSmsCallbackModeChanged(Landroid/os/Handler;)V

    .line 421
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForCiwlanNotification(Landroid/os/Handler;)V

    return-void
.end method

.method private getCallSessionByToken(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 0

    .line 2658
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByToken(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    return-object p0
.end method

.method private getCallsListToClear()Ljava/lang/Object;
    .locals 0

    .line 560
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz p0, :cond_0

    .line 562
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallsListToClear()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 1

    if-eqz p1, :cond_0

    .line 2102
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v0, :cond_0

    .line 2103
    iget-object p0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-object p0

    .line 2105
    :cond_0
    const-string p1, "getImsInterfaceListener returns null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getIncomingOrWaitingCallSession()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 2589
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 2590
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 2591
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2592
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static getOperationStatus(Z)I
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 2350
    iget-object p0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I
    .locals 2

    .line 896
    sget-object v0, Lorg/codeaurora/ims/ImsServiceSub$1;->$SwitchMap$org$codeaurora$ims$ImsConfigImpl$SetCapabilityFailCause:[I

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method private getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I
    .locals 0

    .line 1818
    invoke-static {p1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1819
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p0

    return p0
.end method

.method private handleCallAutoReject(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5

    if-eqz p1, :cond_6

    .line 2426
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2431
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/DriverCallIms;

    .line 2432
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-nez v0, :cond_1

    .line 2433
    const-string p1, "handleCallAutoReject :: No call details in DriverCallIms"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2436
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2437
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2438
    const-string v1, "oi"

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    :cond_2
    const-string v1, "phoneId"

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2442
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2444
    invoke-static {v1}, Lorg/codeaurora/ims/utils/CallComposerInfoUtils;->toBundle(Lorg/codeaurora/ims/CallComposerInfo;)Landroid/os/Bundle;

    move-result-object v1

    .line 2445
    sget-object v2, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_COMPOSER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2448
    :cond_3
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2450
    invoke-virtual {v1}, Lorg/codeaurora/ims/EcnamInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 2451
    sget-object v2, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_ECNAM:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2454
    :cond_4
    const-string v1, "isDcCall"

    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getIsDcCall()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2455
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2457
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v0, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2459
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2460
    const-string v2, "callReason"

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    :cond_5
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v2

    .line 2465
    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsCallUtils;->updateImsCallProfileVerstatInfo(Lorg/codeaurora/ims/VerstatInfo;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2467
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleCallAutoReject :: rejCallProfile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ImsReasonInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2472
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, p1}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda2;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/DriverCallIms;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleCallAutoReject error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2427
    :cond_6
    :goto_0
    const-string p1, "handleCallAutoReject :: Error parsing DriverCallIms"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleCalls(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4

    .line 1365
    const-string v0, ">handleCalls"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1368
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1369
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    goto :goto_0

    .line 1370
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1373
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 1383
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/DriverCallIms;

    .line 1384
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleCalls: dc = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1389
    :cond_1
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez p1, :cond_2

    .line 1390
    const-string p1, "handleCalls :: Null mTracker!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 1393
    :cond_2
    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method private handleCancelModifyCallResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    .line 1999
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2003
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 2006
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string v2, "Cancel upgrade failed"

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    .line 2008
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "handleCancelModifyCallResponse: Result "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 2013
    :try_start_0
    iget p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCancelModifyCallResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2015
    :catchall_0
    const-string p1, "handleCancelModifyCallResponse exception!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2018
    :cond_1
    const-string p1, "handleCancelModifyCallResponse: no listener is available"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private handleCiWlanNotification(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 2501
    const-string v0, "handleCiWlanNotification"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2502
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2506
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastCiwlanNotificationIntent(Z)V

    return-void

    .line 2503
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error EVENT_CIWLAN_NOTIFICATION AsyncResult ar = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleGeolocationRequest(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 7

    .line 2038
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/GeoLocationInfo;

    if-nez p1, :cond_0

    .line 2041
    const-string p1, "handleGeolocationRequest :: Null AsyncResult!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2046
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/GeoLocationInfo;->getLon()D

    move-result-wide v4

    .line 2047
    invoke-virtual {p1}, Lorg/codeaurora/ims/GeoLocationInfo;->getLat()D

    move-result-wide v2

    .line 2048
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleGeolocationRequest: [lat="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " | long="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 2049
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2050
    const-string p1, "handleGeolocationRequest :: Geocoder not present!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    .line 2052
    invoke-direct/range {v1 .. v6}, Lorg/codeaurora/ims/ImsServiceSub;->sendGeolocationResponse(DDLandroid/location/Address;)V

    return-void

    :cond_1
    move-object v1, p0

    .line 2055
    new-instance p0, Landroid/location/Geocoder;

    iget-object p1, v1, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 2057
    :try_start_0
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsServiceSub$ImsGeocodeListener;-><init>(Lorg/codeaurora/ims/ImsServiceSub;DD)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-object p1, v1

    move-wide v1, v2

    move-wide v3, v4

    const/4 v5, 0x1

    move-object v6, v0

    move-object v0, p0

    :try_start_1
    invoke-virtual/range {v0 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-wide v4, v3

    move-wide v2, v1

    goto :goto_0

    :catch_1
    move-wide v4, v3

    move-wide v2, v1

    move-object v1, p1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p1, v1

    :goto_0
    move-object p0, v0

    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " RuntimeException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p1

    .line 2064
    invoke-direct/range {v1 .. v6}, Lorg/codeaurora/ims/ImsServiceSub;->sendGeolocationResponse(DDLandroid/location/Address;)V

    goto :goto_2

    .line 2060
    :catch_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " :: Invalid latitude or longitude value!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 2061
    invoke-direct/range {v1 .. v6}, Lorg/codeaurora/ims/ImsServiceSub;->sendGeolocationResponse(DDLandroid/location/Address;)V

    :goto_2
    return-void
.end method

.method private handleGeolocationResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2023
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 2024
    const-string p1, "handleGeolocationResponse :: Error response!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleHandover(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 1402
    const-string v0, "handleHandover"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1403
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1404
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/HoInfo;

    .line 1405
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz p0, :cond_0

    .line 1406
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleHandover(Lorg/codeaurora/ims/HoInfo;)V

    :cond_0
    return-void

    .line 1410
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncResult exception in handleHandover- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 2

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleCallModifyRequest("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1516
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz p0, :cond_0

    .line 1517
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    :cond_0
    return-void
.end method

.method private handleMwiNotification(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 2110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2111
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2112
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 2113
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2114
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/Mwi;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 2115
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoiceMail()V

    return-void

    .line 2117
    :cond_0
    const-string p1, "handleMwiNotification arMwiUpdate.result null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2120
    :cond_1
    const-string p1, "handleMwiNotification arMwiUpdate exception"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2123
    :cond_2
    const-string p1, "handleMwiNotification msg null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handlePreAlertingCallInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2230
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2231
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/PreAlertingCallInfo;

    .line 2232
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2233
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->onPreAlertingCallDataAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V

    return-void

    .line 2235
    :cond_0
    const-string p1, "handlePreAlertingCallInfo: Tracker and PreAlertingCallInfo are null."

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2238
    :cond_1
    const-string p1, "handlePreAlertingCallInfo exception"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleQueryVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4

    .line 2375
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2376
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2380
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v2, 0x0

    .line 2381
    aget p1, p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2383
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleQueryVoltePrefResponse: result-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mode-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 2388
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceQueried(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2390
    :catchall_0
    const-string p1, "handleQueryVoltePrefResponse exception!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2393
    :cond_1
    const-string p1, "handleQueryVoltePrefResponse: no listener is available"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleSendVosActionInfoResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    .line 2624
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2626
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSendVosActionInfoResponse: listener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " AsyncResult: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2630
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result p1

    .line 2631
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSendVosActionInfoResponse: result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2634
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->handleSendVosActionInfoResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2636
    :catchall_0
    const-string p1, "handleSendVosActionInfoResponse exception!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleSendVosSupportStatusResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    .line 2607
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2609
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSendVosSupportStatusResponse: listener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " AsyncResult: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2613
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result p1

    .line 2614
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSendVosSupportStatusResponse: result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2617
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->handleSendVosSupportStatusResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2619
    :catchall_0
    const-string p1, "handleSendVosSupportStatusResponse exception!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleSetGlassesFree3dVideoCapabilityResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    .line 2641
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2643
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSetGlassesFree3dVideoCapabilityResponse: listener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " AsyncResult: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2647
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result p1

    .line 2648
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSetGlassesFree3dVideoCapabilityResponse: result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2651
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetGlassesFree3dVideoCapabilityResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2653
    :catchall_0
    const-string p1, "handleSetGlassesFree3dVideoCapabilityResponse exception!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleSmsCallbackModeChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 2492
    const-string v0, "handleSmsCallbackModeChanged"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2493
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2497
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastSmsCallbackModeIntent(I)V

    return-void

    .line 2494
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error EVENT_SMS_CALLBACK_MODE_CHANGED AsyncResult ar = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->clone()Lorg/codeaurora/ims/CapabilityTracker;

    move-result-object v0

    .line 963
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetCapabilities()V

    .line 964
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ServiceStatus;

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isValid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 967
    iget-boolean v2, v1, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->isSrvTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 968
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    .line 969
    iget-boolean v4, v1, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    iput-boolean v4, v2, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 970
    iget v4, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iput v4, v2, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 971
    iget-object v4, v1, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    if-eqz v4, :cond_1

    .line 972
    iget-object v4, v1, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v4, v4

    new-array v4, v4, [B

    iput-object v4, v2, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 973
    iget-object v4, v1, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v5, v1, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    iput-object v4, v2, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 975
    :cond_1
    iget-object v4, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 976
    iget-object v4, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v4, v4

    new-array v4, v4, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v4, v2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 978
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Call Type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "has num updates = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 980
    iget-object v4, v2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    const/4 v5, 0x0

    move v6, v5

    .line 982
    :goto_0
    iget-object v7, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 983
    iget-object v7, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v7, v7, v6

    .line 985
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "StatusForAccessTech networkMode = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " registered = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " restrictCause = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 990
    new-instance v8, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v8}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v8, v4, v6

    .line 991
    iget v9, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v9, v8, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 992
    aget-object v8, v4, v6

    iget v9, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v9, v8, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 993
    iget v8, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v8, v9, :cond_2

    iget v8, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v8, :cond_2

    .line 995
    aget-object v8, v4, v6

    iput v10, v8, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto :goto_1

    .line 997
    :cond_2
    aget-object v8, v4, v6

    iget v11, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v11, v8, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 999
    :goto_1
    aget-object v8, v4, v6

    iget v8, v8, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v8, v2, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 1000
    aget-object v8, v4, v6

    iget v7, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v7, v8, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 1001
    aget-object v7, v4, v6

    iget v7, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-static {v7}, Lorg/codeaurora/ims/ImsServiceSub;->mapToImsRegistrationTech(I)I

    move-result v7

    .line 1002
    iget v8, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-static {v8}, Lorg/codeaurora/ims/ImsServiceSub;->mapToMmTelCapability(I)I

    move-result v8

    .line 1003
    aget-object v11, v4, v6

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-direct {p0, v8, v11, v7}, Lorg/codeaurora/ims/ImsServiceSub;->canAddCapability(III)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1004
    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v9, v8, v7}, Lorg/codeaurora/ims/CapabilityTracker;->addCapability(II)V

    const/16 v7, 0x10

    if-ne v8, v7, :cond_d

    .line 1007
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v7, v10}, Lorg/codeaurora/ims/CapabilityTracker;->setIsCallComposerSupported(Z)V

    goto/16 :goto_4

    .line 1009
    :cond_3
    iget v11, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v12, 0x1a

    const/4 v13, -0x1

    if-ne v11, v12, :cond_4

    if-eq v7, v13, :cond_4

    goto/16 :goto_4

    .line 1021
    :cond_4
    iget v11, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v12, 0x1b

    if-ne v11, v12, :cond_7

    if-eq v7, v13, :cond_7

    .line 1026
    aget-object v7, v4, v6

    iget v7, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eq v7, v10, :cond_6

    aget-object v7, v4, v6

    iget v7, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-ne v7, v9, :cond_5

    goto :goto_2

    :cond_5
    move v10, v5

    .line 1029
    :cond_6
    :goto_2
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v7, v10}, Lorg/codeaurora/ims/CapabilityTracker;->setIsUssdSupported(Z)V

    goto :goto_4

    .line 1030
    :cond_7
    iget v11, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v12, 0x1c

    if-ne v11, v12, :cond_a

    if-eq v7, v13, :cond_a

    .line 1035
    aget-object v7, v4, v6

    iget v7, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eq v7, v10, :cond_9

    aget-object v7, v4, v6

    iget v7, v7, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-ne v7, v9, :cond_8

    goto :goto_3

    :cond_8
    move v10, v5

    .line 1038
    :cond_9
    :goto_3
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v7, v10}, Lorg/codeaurora/ims/CapabilityTracker;->setIsDataChannelSupported(Z)V

    .line 1039
    invoke-direct {p0, v10}, Lorg/codeaurora/ims/ImsServiceSub;->notifyDataChannelCapability(Z)V

    goto :goto_4

    :cond_a
    if-eq v8, v10, :cond_b

    if-ne v8, v9, :cond_d

    :cond_b
    if-eq v7, v13, :cond_d

    .line 1041
    iget v9, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    if-eq v7, v9, :cond_d

    .line 1049
    invoke-virtual {v0, v8}, Lorg/codeaurora/ims/CapabilityTracker;->isSupported(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1052
    iget v9, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    invoke-virtual {v0, v8, v9}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1053
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    iget v9, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    invoke-virtual {v7, v8, v9}, Lorg/codeaurora/ims/CapabilityTracker;->addCapability(II)V

    goto :goto_4

    .line 1056
    :cond_c
    invoke-virtual {v0, v8, v7}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1057
    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v9, v8, v7}, Lorg/codeaurora/ims/CapabilityTracker;->addCapability(II)V

    :cond_d
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1067
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleSrvStatusUpdate ::  Call Composer updated to: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isCallComposerSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " USSD capability updated to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isUssdSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " IMS Data Channel updated to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isDataChannelSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1067
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 1072
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {p1}, Lorg/codeaurora/ims/CapabilityTracker;->getEnabledCapabilities()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 1073
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_5

    .line 1076
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleSrvStatusUpdate :: mMmtelCapabilities updated to: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 1078
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 1080
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz p1, :cond_10

    .line 1081
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    goto :goto_6

    .line 1083
    :cond_10
    const-string p1, "handleSrvStatusUpdate :: tracker null; not updating global VT capability"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1096
    :goto_6
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz p1, :cond_11

    .line 1097
    new-instance p1, Landroid/util/Pair;

    .line 1098
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1099
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 1101
    :cond_11
    const-string p1, "handleSrvStatusUpdate :: mCapabilitiesChangedRegistrants null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleSsac(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2183
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2184
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/SsacInfo;

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSsac voice = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p1}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 2188
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    return-void

    .line 2190
    :cond_1
    const-string p1, "handleSsac exception"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 2289
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2290
    iget-object p2, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, Lorg/codeaurora/ims/SsacInfo;

    .line 2292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSsacResponse voice = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2293
    invoke-virtual {p2}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    if-eqz p1, :cond_1

    .line 2297
    :try_start_0
    iget p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, p0, p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifySsacStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2299
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    .line 2303
    :cond_2
    const-string p1, "handleSsacResponse exception"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleSuppSvc(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    .line 1420
    const-string v0, "handleSuppSvc"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1422
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/SuppNotifyInfo;

    .line 1423
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz p0, :cond_0

    .line 1424
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    :cond_0
    return-void

    .line 1428
    :cond_1
    const-string p1, "AsyncResult exception in handleSuppSvc."

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleTtyModeChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    .line 1437
    const-string v0, "handleTtyModeChange"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1438
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1439
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received EVENT_TTY_STATE_CHANGED mode= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1441
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz p0, :cond_0

    .line 1442
    aget p1, p1, v1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleTtyModeChangeUnsol(I)V

    :cond_0
    return-void

    .line 1445
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error EVENT_TTY_STATE_CHANGED AsyncResult ar= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleUpdateVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    .line 2358
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2359
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result p1

    .line 2360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleUpdateVoltePrefResponse: result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 2365
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceUpdated(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2367
    :catchall_0
    const-string p1, "handleUpdateVoltePrefResponse exception!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2370
    :cond_0
    const-string p1, "handleUpdateVoltePrefResponse: no listener is available"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleUssdReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 2210
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2215
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/UssdInfo;

    .line 2218
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 2220
    :try_start_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getType()I

    move-result v2

    .line 2221
    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    .line 2220
    invoke-interface {p1, v1, v2, v3, v4}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUssdFailed(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2223
    :catch_0
    const-string p1, "handleUssd exception!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2226
    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->onUssdMessageReceived(Lorg/codeaurora/ims/UssdInfo;)V

    return-void

    .line 2211
    :cond_2
    :goto_1
    const-string p1, "handleUssdReceived invalid info"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleVoWiFiCallQuality(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 2148
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2149
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x0

    .line 2150
    aget v1, p1, v0

    if-eqz v1, :cond_1

    .line 2151
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz p1, :cond_0

    .line 2152
    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVoWiFiCallQuality(I)V

    return-void

    .line 2154
    :cond_0
    const-string p1, "Wifi Quality Error -- tracker is null"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2157
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleVoWiFiCallQuality received VoWiFIQuality : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2161
    :cond_2
    const-string p1, "handleVoWiFiCallQuality response is not valid"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleVops(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2174
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2175
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2176
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    return-void

    .line 2178
    :cond_0
    const-string p1, "handleVops exception"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 2264
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2265
    iget-object p2, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, Lorg/codeaurora/ims/VopsInfo;

    .line 2267
    invoke-virtual {p2}, Lorg/codeaurora/ims/VopsInfo;->isVopsEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2268
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Vops Response = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 2270
    :cond_0
    const-string p2, "handleVopsResponse exception"

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2277
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "notifyVopsStatus = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2280
    :try_start_0
    iget p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-interface {p1, p2, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyVopsStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2282
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "notifyVopsStatus exception"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleWfcRoamingConfiguration(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2195
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2196
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    goto :goto_0

    .line 2198
    :cond_0
    const-string p1, "handleWfcRoamingConfiguration exception"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2200
    :goto_0
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    if-eqz p1, :cond_1

    .line 2201
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWfcModeConfigurationsToModem()V

    :cond_1
    return-void
.end method

.method private initServiceStatus()V
    .locals 3

    .line 542
    new-instance v0, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x1

    .line 547
    new-array v1, v1, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 548
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 549
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v0, v2

    const/16 v1, 0xe

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 550
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v0, v2

    const/4 v1, 0x3

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 551
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v0, v2

    const/4 v2, 0x2

    iput v2, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 552
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iput v1, p0, Lorg/codeaurora/ims/ServiceStatus;->status:I

    return-void
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1353
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/RuntimeException;

    .line 1355
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 1356
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSrvTypeValid(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    :cond_0
    :pswitch_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$handleCallAutoReject$2(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 0

    .line 2473
    iget-object p2, p2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->notifyRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private synthetic lambda$handleNotifyIncomingCall$3(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 1

    .line 2484
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/ImsCallSessionListener;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2486
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "handleNotifyIncomingCall: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onSessionAdded$0(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0

    .line 441
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    return-void
.end method

.method static synthetic lambda$onSessionRemoved$1(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0

    .line 448
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2

    .line 2690
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsServiceSub"

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2

    .line 2694
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsServiceSub"

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    .line 2682
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsServiceSub"

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2

    .line 2686
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsServiceSub"

    invoke-static {p1, p0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static mapToImsRegistrationTech(I)I
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_2
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static mapToMmTelCapability(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/16 p0, 0x10

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/16 p0, 0x8

    return p0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method private maybeEnableGlassesFree3dVideoCap()V
    .locals 3

    .line 453
    const-string v0, "maybeEnableGlassesFree3dVideoCap."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 454
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_glasses_free_3d_video_cap_test"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->setGlassesFree3dVideoCapability(ZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method private maybeUpdateMediaConfiguration()V
    .locals 5

    .line 515
    const-string v0, "maybeUpdateMediaConfiguration."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 517
    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isSendMediaConfigurationSupported(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 521
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 522
    const-string v0, "Stack is not ready."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/ims/utils/DisplayUtils;->getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 527
    const-string v1, "video/avc"

    .line 528
    invoke-static {v1}, Lcom/qualcomm/ims/utils/MediaCodecUtils;->getVideoDecoderMaxSupportedDimension(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 530
    const-string v2, "video/hevc"

    .line 531
    invoke-static {v2}, Lcom/qualcomm/ims/utils/MediaCodecUtils;->getVideoDecoderMaxSupportedDimension(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    goto :goto_0

    .line 536
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2b

    .line 537
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 536
    invoke-virtual {v3, v0, v1, v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setMediaConfigurationRequest(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/os/Message;)V

    return-void

    .line 533
    :cond_3
    :goto_0
    const-string v0, "maybeUpdateMediaConfiguration :: Invalid media size!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 518
    :cond_4
    :goto_1
    const-string v0, "Feature is not supported or carrier config is not ready."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private notifyDataChannelCapability(Z)V
    .locals 2

    .line 2536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyDataChannelCapability dcCapability = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2537
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDataChannelCapabilityListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v0, :cond_0

    .line 2539
    :try_start_0
    iget p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyDataChannelCapability(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2541
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private notifyFeatureCapabilityChange()V
    .locals 3

    .line 745
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyFeatureCapabilityChange :: Capabilities = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method private onExitScbmDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1992
    :cond_0
    :try_start_0
    iget-object p2, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onScbmExited(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1994
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onExitScbmDone exception!"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private onGetCallBarringReqDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5

    const-string v0, "onGetCallBarringReqDone successful response! status = "

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1950
    :cond_0
    :try_start_0
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1951
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result p2

    invoke-interface {p1, v0, p2, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V

    return-void

    .line 1955
    :cond_1
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    const/16 v3, 0x324

    if-nez v1, :cond_2

    .line 1956
    iget p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, p2, v3, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V

    return-void

    .line 1960
    :cond_2
    iget-object p2, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1961
    invoke-virtual {p2}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1963
    invoke-virtual {p2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 1964
    invoke-virtual {p2}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    .line 1969
    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 1970
    aput v2, v1, v2

    .line 1971
    invoke-virtual {p2}, Lorg/codeaurora/ims/SuppSvcResponse;->isPasswordRequired()Z

    move-result v3

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 1973
    invoke-virtual {p2}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result p2

    if-ne p2, v4, :cond_4

    .line 1974
    aput v4, v1, v2

    .line 1977
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v0, v1, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isPasswordRequired = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1979
    invoke-interface {p1, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->queryCallBarringResponse([I)V

    return-void

    .line 1965
    :cond_5
    :goto_0
    iget p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, p2, v3, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1982
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onGetCallBarringReqDone exception!"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private onGetCallForwardReqDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4

    .line 1913
    :try_start_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getUt()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_0

    .line 1917
    :cond_0
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1918
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result p2

    invoke-interface {p1, v0, p2, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V

    return-void

    .line 1922
    :cond_1
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    const/16 v3, 0x324

    if-nez v1, :cond_2

    .line 1923
    iget p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, p2, v3, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V

    return-void

    .line 1927
    :cond_2
    const-string v1, "onGetCallForwardReqDone successful response! "

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1928
    iget-object p2, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1931
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsUtImpl;->toImsCallForwardInfo([Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1934
    iget p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, p2, v3, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V

    return-void

    .line 1938
    :cond_3
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v0, p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->queryCallForwardStatusResponse(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1941
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onGetCallForwardReqDone exception!"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 1869
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v4, "onUTReqFailed exception!"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1870
    const-string v3, "get CF Timer error!"

    invoke-direct {v1, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1872
    :try_start_0
    iget v3, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v0

    invoke-interface {v2, v3, v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1878
    :cond_0
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 1879
    const-string v3, "onGetCallForwardTimerDone ImsCallForwardTimerInfo instance! "

    invoke-direct {v1, v3}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1880
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    move-object v14, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    .line 1881
    :goto_0
    array-length v15, v3

    if-ge v6, v15, :cond_1

    .line 1882
    aget-object v7, v3, v6

    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1883
    aget-object v7, v3, v6

    iget v9, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1884
    aget-object v7, v3, v6

    iget v10, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1885
    aget-object v7, v3, v6

    iget v11, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 1886
    aget-object v7, v3, v6

    iget v7, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1887
    aget-object v12, v3, v6

    iget v12, v12, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1888
    aget-object v13, v3, v6

    iget-object v14, v13, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1889
    aget-object v13, v3, v6

    iget v13, v13, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v5

    move v6, v8

    move v5, v9

    move v9, v12

    move v8, v7

    move v7, v11

    move v11, v13

    goto :goto_1

    :cond_2
    move-object v3, v5

    move-object v14, v3

    move v5, v6

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_1
    if-eqz v2, :cond_4

    if-nez v8, :cond_3

    .line 1896
    :try_start_1
    iget v3, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    move v4, v6

    move v6, v10

    move-object v10, v14

    invoke-interface/range {v2 .. v11}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetCallForwardUncondTimer(IIIIIIILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 1899
    :catchall_1
    const-string v0, "onGetCallForwardTimerDone exception!"

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1903
    :cond_3
    :try_start_2
    iget v5, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v0

    invoke-interface {v2, v5, v0, v3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 2400
    :try_start_0
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2402
    :cond_0
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2403
    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object p2, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result p2

    invoke-interface {p1, v2, p2, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetHandoverConfig(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2406
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onGetHandoverConfigDone "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2409
    :cond_2
    const-string p1, "onGetHandoverConfigDone listener is not valid !!!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 1829
    :cond_0
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 1830
    const-string v0, "set CF Timer error!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1831
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/CallForwardStatusInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1832
    invoke-virtual {v0}, Lorg/codeaurora/ims/CallForwardStatusInfo;->getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1834
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1835
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSetCallForwardTimerDone Failure cause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1836
    const-string v2, "onUTReqFailed exception!"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1838
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result p2

    invoke-interface {p1, v1, p2, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1840
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1844
    :cond_3
    :try_start_1
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result p2

    invoke-interface {p1, v0, p2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 1846
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1850
    :cond_4
    const-string p2, "set CF Timer success!"

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1852
    :try_start_2
    iget p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetCallForwardUncondTimer(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 1854
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSetCallForwardTimerDone exception!"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    :goto_2
    return-void

    .line 1824
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetCallForwardTimerDone: listener : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " AsyncResult: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2416
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object p2, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result p2

    invoke-interface {p1, v0, p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetHandoverConfig(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2418
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSetHandoverConfigDone "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 2421
    :cond_1
    const-string p1, "onSetHandoverConfigDone listener is not valid !!!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private registerForImsEvents()V
    .locals 5

    .line 323
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x15

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x19

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1a

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1d

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x24

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallAutoRejection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x26

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForUssdInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x17

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x29

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForPreAlertingCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x25

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForWfcRoamingModeFeatureSupport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 345
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2a

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSmsCallbackModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2d

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCiwlanNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 347
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    return-void
.end method

.method private resetCapabilities()V
    .locals 2

    .line 956
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->clear()V

    .line 957
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-void
.end method

.method private sendBroadcastForDisconnected(ILandroid/telephony/ims/ImsReasonInfo;I)V
    .locals 2

    .line 1535
    iget-object v0, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1539
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1540
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1541
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1542
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1543
    const-string v1, "stateChanged"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    const-string p3, "imsRat"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1545
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result p3

    invoke-static {v0, p3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1546
    iget-object p3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1547
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sendBroadcastForDisconnected: imsRat "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ImsReasonInfo: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    return-void

    .line 1536
    :cond_1
    :goto_0
    const-string p1, "Error msg is null or empty, ignore!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private sendGeolocationResponse(DDLandroid/location/Address;)V
    .locals 7

    .line 2033
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    .line 2034
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 2033
    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V

    return-void
.end method

.method private updateVoiceMail()V
    .locals 3

    .line 2129
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v0, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    .line 2130
    iget v2, v1, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    if-nez v2, :cond_0

    .line 2131
    iget v0, v1, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    iget v1, v1, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2138
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateVoiceMail count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2140
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyVoiceMessageCountUpdate(I)V

    return-void
.end method


# virtual methods
.method public IsWfcRoamingConfigurationSupportedByModem()Z
    .locals 0

    .line 2206
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    return p0
.end method

.method public addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1489
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1490
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addListener error: Duplicate listener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1486
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addListener error: listener is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 12

    if-eqz p1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 780
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    .line 781
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object p1

    .line 782
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    const-string p1, "changeEnabledCapabilities :: No CapabilityPair objects to process!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 790
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 791
    new-instance v1, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 794
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 802
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 803
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    const/16 v8, 0x20

    const/16 v9, 0x10

    const/4 v10, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 805
    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v11

    if-ne v11, v9, :cond_2

    move v2, v10

    move v3, v2

    .line 809
    :cond_2
    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v9

    if-ne v9, v8, :cond_3

    move v4, v10

    move v5, v4

    .line 815
    :cond_3
    invoke-static {v6}, Lorg/codeaurora/ims/ImsServiceSub;->canChangeCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 816
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "changeEnabledCapabilities :: ignoring unsupported enable capability request: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 818
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v9

    .line 819
    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v6

    .line 818
    invoke-virtual {v8, v9, v6, v7}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    goto :goto_0

    .line 822
    :cond_4
    new-instance v7, Lorg/codeaurora/ims/CapabilityStatus;

    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v8

    invoke-virtual {v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v6

    invoke-direct {v7, v8, v6, v10}, Lorg/codeaurora/ims/CapabilityStatus;-><init>(III)V

    .line 824
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 827
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 829
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v6

    if-ne v6, v9, :cond_6

    move v3, v10

    .line 832
    :cond_6
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v6

    if-ne v6, v8, :cond_7

    move v5, v10

    .line 837
    :cond_7
    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->canChangeCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 838
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "changeEnabledCapabilities :: ignoring unsupported disable capability request: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 840
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v11

    .line 841
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v0

    .line 840
    invoke-virtual {v6, v11, v0, v7}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    goto :goto_1

    .line 844
    :cond_8
    new-instance v6, Lorg/codeaurora/ims/CapabilityStatus;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v11

    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v0

    invoke-direct {v6, v11, v0, v1}, Lorg/codeaurora/ims/CapabilityStatus;-><init>(III)V

    .line 846
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    if-eqz v3, :cond_a

    .line 855
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v0, 0x3ec

    invoke-virtual {p1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequestAsync(II)V

    .line 856
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "changeEnabledCapabilities QtiCallConstants.CALL_COMPOSER_ENABLED ="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    if-eqz v5, :cond_b

    .line 861
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v0, 0x3ed

    invoke-virtual {p1, v0, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequestAsync(II)V

    .line 862
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "changeEnabledCapabilities QtiCallConstants.B2C_ENRICHED_CALLING_MODE ="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    :cond_b
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsServiceSub-IA;)V

    invoke-virtual {p1, p2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilityValue(Ljava/util/ArrayList;Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;)V

    return-void

    .line 776
    :cond_c
    :goto_2
    const-string p1, "changeEnabledCapabilities :: Invalid argument(s)."

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 626
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 627
    const-string p1, "createCallProfile :: Null ImsServiceClassTracker!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 632
    :cond_0
    new-instance p0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    return-object p0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 2

    .line 644
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 645
    const-string p1, "createCallSession :: Null ImsServiceClassTracker!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-object v1

    .line 647
    :cond_0
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object p0

    return-object p0
.end method

.method public dispose()V
    .locals 3

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V

    .line 369
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 371
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    if-eqz v1, :cond_0

    .line 372
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 375
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 377
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 379
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConferenceController;->dispose()V

    .line 381
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 383
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    if-eqz v1, :cond_3

    .line 384
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->dispose()V

    .line 386
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-eqz v1, :cond_4

    .line 387
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsUtImpl;->close()V

    .line 389
    :cond_4
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    .line 390
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    if-eqz v1, :cond_5

    .line 391
    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsRegistrationController;->removeListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V

    .line 392
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsRegistrationController;->dispose()V

    .line 393
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    .line 395
    :cond_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSubController;->unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)Z

    .line 396
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->deregisterForImsEvents()V

    return-void
.end method

.method public exitScbm(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 1324
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2c

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->exitScbm(Landroid/os/Message;)V

    return-void
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 0

    .line 1464
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    return-object p0
.end method

.method public getArController()Lorg/codeaurora/ims/ImsArControllerImpl;
    .locals 2

    .line 2578
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mArController:Lorg/codeaurora/ims/ImsArControllerImpl;

    if-nez v0, :cond_0

    .line 2579
    new-instance v0, Lorg/codeaurora/ims/ImsArControllerImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsArControllerImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mArController:Lorg/codeaurora/ims/ImsArControllerImpl;

    .line 2581
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mArController:Lorg/codeaurora/ims/ImsArControllerImpl;

    return-object p0
.end method

.method public getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCallForwardUncondTimer reason is"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    .line 1229
    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 p3, 0x0

    .line 1228
    invoke-virtual {v0, p1, p2, p3, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codeaurora/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 1455
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;
    .locals 0

    .line 704
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    return-object p0
.end method

.method public getCrsCrbtController()Lorg/codeaurora/ims/CrsCrbtControllerImpl;
    .locals 2

    .line 2571
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCrsCrbtController:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isCrsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2572
    new-instance v0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCrsCrbtController:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    .line 2574
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCrsCrbtController:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    return-object p0
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 0

    .line 713
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    return-object p0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1475
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getFeatureIsOpen()Z
    .locals 0

    .line 1567
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1557
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 1314
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->getHandoverConfig(Landroid/os/Message;)V

    return-void
.end method

.method public getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;
    .locals 0

    .line 1552
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    return-object p0
.end method

.method public getImsFeatureState()I
    .locals 0

    .line 2585
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result p0

    return p0
.end method

.method public getImsRegistrationInterface()Lorg/codeaurora/ims/ImsRegistrationImpl;
    .locals 0

    .line 657
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    return-object p0
.end method

.method public getImsServiceClassTracker()Lorg/codeaurora/ims/ImsServiceClassTracker;
    .locals 0

    .line 1562
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    return-object p0
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 0

    .line 2552
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    return-object p0
.end method

.method public getMultiIdentityImpl()Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .locals 5

    .line 2556
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    if-nez v0, :cond_0

    .line 2557
    new-instance v0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 2558
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;-><init>(ILorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 2560
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 1471
    iget p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    return p0
.end method

.method public getScreenShareController()Lorg/codeaurora/ims/ImsScreenShareControllerImpl;
    .locals 2

    .line 2564
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    if-nez v0, :cond_0

    .line 2565
    new-instance v0, Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsScreenShareControllerImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    .line 2567
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    return-object p0
.end method

.method public getSelfIdentityUri()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 2677
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->getSelfIdentityUri()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 0

    .line 680
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

    return-object p0
.end method

.method public bridge synthetic getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 0

    .line 107
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getUt()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object p0

    return-object p0
.end method

.method public getUt()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 3

    .line 689
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-eqz v0, :cond_0

    return-object v0

    .line 693
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lorg/codeaurora/ims/ImsUtImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    .line 694
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl;->setOnClosedListener(Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;)V

    .line 695
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-object p0
.end method

.method public getVideoProvider(I)Lcom/qualcomm/ims/vt/ImsVideoCallProvider;
    .locals 0

    .line 2662
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByToken(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2664
    const-string p1, "No session found with passed in token"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2667
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProvider2()Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    move-result-object p0

    return-object p0
.end method

.method protected handleNotifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 2

    .line 2482
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda4;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleParticipantStatusInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 8

    if-eqz p1, :cond_4

    .line 2313
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 2314
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ParticipantStatusDetails;

    .line 2316
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_2

    .line 2317
    invoke-virtual {p1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2322
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleParticipantStatusInfo operation = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getOperation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    invoke-virtual {p1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getSipStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " participant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    invoke-virtual {p1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getParticipantUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getIsEct()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2322
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2325
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2327
    :try_start_0
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 2328
    invoke-virtual {p1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getOperation()I

    move-result v4

    invoke-virtual {p1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getSipStatus()I

    move-result v5

    .line 2329
    invoke-virtual {p1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getParticipantUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getIsEct()Z

    move-result v7

    .line 2327
    invoke-interface/range {v2 .. v7}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyParticipantStatusInfo(IIILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2331
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void

    .line 2318
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "participant listeners size= "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isTrackerPresent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    return-void

    .line 2335
    :cond_4
    const-string p1, "ParticipantStatusInfo exception"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public isCallComposerSupported()Z
    .locals 0

    .line 1198
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CapabilityTracker;->isCallComposerSupported()Z

    move-result p0

    return p0
.end method

.method public isDataChannelSupported()Z
    .locals 0

    .line 1206
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CapabilityTracker;->isDataChannelSupported()Z

    move-result p0

    return p0
.end method

.method public isExitScbmFeatureSupported()Z
    .locals 1

    .line 1328
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isUssdSupported()Z
    .locals 0

    .line 1202
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CapabilityTracker;->isUssdSupported()Z

    move-result p0

    return p0
.end method

.method public isVideoSupported()Z
    .locals 0

    .line 1182
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CapabilityTracker;->isVideoSupported()Z

    move-result p0

    return p0
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 0

    .line 1190
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CapabilityTracker;->isVideoSupportedOverWifi()Z

    move-result p0

    return p0
.end method

.method public isVoiceSupported()Z
    .locals 0

    .line 1186
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CapabilityTracker;->isVoiceSupported()Z

    move-result p0

    return p0
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 0

    .line 1194
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CapabilityTracker;->isVoiceSupportedOverWifi()Z

    move-result p0

    return p0
.end method

.method public onCarrierConfigChanged()V
    .locals 1

    .line 912
    const-string v0, "onCarrierConfigChanged"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 913
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->maybeUpdateMediaConfiguration()V

    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/ImsUtImpl;)V
    .locals 2

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notified that ImsUtImpl is closed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2673
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-void
.end method

.method public onDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 263
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result p3

    .line 262
    invoke-direct {p0, p3, p2, p1}, Lorg/codeaurora/ims/ImsServiceSub;->sendBroadcastForDisconnected(ILandroid/telephony/ims/ImsReasonInfo;I)V

    .line 266
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onFeatureReady()V
    .locals 4

    .line 574
    const-string v0, "onFeatureReady"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 577
    const-string v0, "onFeatureReady :: creating ImsServiceClassTracker"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 578
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 579
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    .line 580
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->closeAllSessions()V

    .line 586
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-nez v0, :cond_1

    .line 587
    const-string v0, "onFeatureReady :: creating ImsConferenceController"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 588
    new-instance v0, Lorg/codeaurora/ims/ImsConferenceController;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsConferenceController;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    goto :goto_1

    .line 590
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConferenceController;->cleanupConferenceAttempt()V

    .line 593
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 594
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsRegistrationController;->requestImsRegistrationState()V

    const/4 v0, 0x1

    .line 596
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    return-void
.end method

.method public onFeatureRemoved()V
    .locals 1

    .line 602
    const-string v0, "onFeatureRemoved"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 603
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    return-void
.end method

.method onIccLoaded()V
    .locals 1

    .line 907
    const-string v0, "onIccLoaded..."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 908
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    return-void
.end method

.method public onRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 2

    .line 236
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v0

    .line 237
    invoke-static {p3}, Lorg/codeaurora/ims/ImsServiceSub;->mapToImsRegistrationTech(I)I

    move-result v1

    iput v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    if-eqz p4, :cond_0

    .line 239
    invoke-direct {p0, v0, p2, p1}, Lorg/codeaurora/ims/ImsServiceSub;->sendBroadcastForDisconnected(ILandroid/telephony/ims/ImsReasonInfo;I)V

    .line 241
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 p4, 0x5

    invoke-virtual {p2, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    .line 243
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registeredWithRadioTech(I)V

    return-void
.end method

.method public onRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 1

    .line 249
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v0

    if-eqz p4, :cond_0

    .line 251
    invoke-direct {p0, v0, p2, p1}, Lorg/codeaurora/ims/ImsServiceSub;->sendBroadcastForDisconnected(ILandroid/telephony/ims/ImsReasonInfo;I)V

    .line 253
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 p4, 0x5

    invoke-virtual {p2, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQueryingServiceStatus:Z

    .line 255
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registeringWithRadioTech(I)V

    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1

    .line 426
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ICallListListener;

    .line 427
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 1

    .line 440
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda1;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1

    .line 433
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ICallListListener;

    .line 434
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 1

    .line 447
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStackConfigChanged([ZI)V
    .locals 11

    const-string v0, "oldFeatureState = "

    const-string v1, "onStackConfigChanged :: activeStacks["

    .line 465
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    if-eq v2, p2, :cond_0

    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsSubController;->isDsdv()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 466
    const-string p1, "onStackConfigChanged safely ignore the indication"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    return-void

    .line 471
    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    aget-boolean v1, p1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 473
    iget p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    aget-boolean p1, p1, p2

    const/4 p2, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, p2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 475
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result p2

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    if-ne p2, v1, :cond_3

    if-nez p1, :cond_3

    .line 479
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetCapabilities()V

    .line 481
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-direct {p2, v0, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 484
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRegController:Lorg/codeaurora/ims/ImsRegistrationController;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsRegistrationController;->reset(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 486
    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    if-eqz p2, :cond_2

    .line 487
    invoke-virtual {p2, v2, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    goto :goto_1

    .line 489
    :cond_2
    const-string p2, "onStackConfigChanged :: mImsServiceStateReceiver null"

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eq p2, v1, :cond_5

    if-ne p1, v1, :cond_5

    .line 497
    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsSubController;->isMultiSimEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 498
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 497
    invoke-static {p2, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getAutoRejectMode(Landroid/content/ContentResolver;I)I

    move-result v2

    :cond_4
    move v7, v2

    .line 500
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x27

    .line 503
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const/16 v4, 0x2c

    const/16 v5, 0x4a

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 500
    invoke-virtual/range {v3 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 504
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->maybeUpdateMediaConfiguration()V

    .line 505
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->maybeEnableGlassesFree3dVideoCap()V

    .line 508
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 510
    :catch_0
    const-string p1, "onStackConfigChanged :: Invalid activeStacks length!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0

    .line 276
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method public onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 271
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public queryCallBarringStatus(ILjava/lang/String;IZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 7

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCallBarringStatus cbType "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getUt()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 1288
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    .line 1290
    invoke-virtual {v0, v2, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v5, p2

    move v3, p3

    move v4, p4

    .line 1289
    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(IIZLjava/lang/String;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1294
    :try_start_0
    iget p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/16 p2, 0x322

    const/4 p3, 0x0

    invoke-interface {p5, p1, p2, p3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1296
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onUTReqFailed exception!"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IIZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 7

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCallForwardStatus reason is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "expectMore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1275
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12

    .line 1276
    invoke-virtual {p0, v0, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v6, p3

    .line 1275
    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;Z)V

    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 2

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCapabilityConfiguration :: capability="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 737
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result p0

    return p0
.end method

.method public querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 2259
    const-string v0, "querySsacStatus"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2260
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->querySsacStatus(Landroid/os/Message;)V

    return-void
.end method

.method public queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 2344
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVoltePref(Landroid/os/Message;)V

    return-void
.end method

.method public queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 2254
    const-string v0, "queryVopsStatus"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2255
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVopsStatus(Landroid/os/Message;)V

    return-void
.end method

.method public registerForCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 2166
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0

    .line 2144
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1507
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 1510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeListener error: Listener not found, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1504
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "removeListener error: listener is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resumePendingCall(I)V
    .locals 2

    .line 1303
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1304
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 1306
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1307
    const-string p1, "resumePendingCall: no call is available"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1310
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->resumePendingCall(I)V

    return-void
.end method

.method public sendCancelModifyCall(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    .line 1234
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1235
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 1237
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    const-string v0, "sendCancelModifyCall: no call is available to cancel modify call"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1242
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCancelModifyCallResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1245
    :catchall_0
    const-string p1, "sendCancelModifyCall exception!"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void

    .line 1248
    :cond_0
    const-string p1, "sendCancelModifyCall: no listener is available"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1252
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendCancelModifyCall: call ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1256
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->cancelModifyCall(Landroid/os/Message;I)V

    return-void
.end method

.method public sendVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 1337
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2f

    .line 1338
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1337
    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;Landroid/os/Message;)V

    return-void
.end method

.method public sendVosSupportStatus(ZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 1332
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    .line 1333
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1332
    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendVosSupportStatus(ZLandroid/os/Message;)V

    return-void
.end method

.method public setAnswerExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 2598
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getIncomingOrWaitingCallSession()Ljava/util/List;

    move-result-object v0

    .line 2599
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2600
    const-string p1, "setAnswerExtras: no incoming/waiting call available"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2603
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setAnswerExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 1218
    const-string v0, "setCallForwardUncondTimer"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    move-object v0, p0

    .line 1219
    iget-object p0, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    .line 1221
    invoke-virtual {v0, v1, p9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p9

    .line 1219
    invoke-virtual/range {p0 .. p9}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setDataChannelCapabilityListener(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    .line 1267
    const-string v0, "setDataChannelCapabilityListener"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 1268
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDataChannelCapabilityListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-void
.end method

.method public setGlassesFree3dVideoCapability(ZLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 1343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    .line 1344
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1343
    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setGlassesFree3dVideoCapability(ZLandroid/os/Message;)V

    return-void
.end method

.method public setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 1319
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    .line 1320
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1319
    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setHandoverConfig(ILandroid/os/Message;)V

    return-void
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 2

    .line 671
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setUiTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public setUssdInfoListener(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1

    .line 1262
    const-string v0, "setUssdInfoListener"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 1263
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-void
.end method

.method public turnOffIms()V
    .locals 2

    .line 363
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 364
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x2

    .line 363
    invoke-virtual {v0, v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    return-void
.end method

.method public turnOnIms()V
    .locals 2

    .line 354
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 355
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x1

    .line 354
    invoke-virtual {v0, v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    return-void
.end method

.method public unregisterForCapabilitiesChanged(Landroid/os/Handler;)V
    .locals 0

    .line 2170
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 0

    .line 1210
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz p0, :cond_0

    .line 1211
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateLowBatteryStatus()V

    :cond_0
    return-void
.end method

.method public updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 2

    .line 2340
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->updateVoltePref(ILandroid/os/Message;)V

    return-void
.end method
