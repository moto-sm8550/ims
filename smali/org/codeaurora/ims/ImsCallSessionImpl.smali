.class public Lorg/codeaurora/ims/ImsCallSessionImpl;
.super Lorg/codeaurora/ims/QImsSessionBase;
.source "ImsCallSessionImpl.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsConferenceController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;,
        Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;
    }
.end annotation


# static fields
.field private static final ALERT_HANDOVER:I = 0x1

.field private static final ALERT_TIMES_AFTER_DROP_CALL:I = 0x3

.field private static final ANONYMOUS_CALLER:Ljava/lang/String; = "anonymous"

.field static final ATT_WIFI_CONGESTED:Ljava/lang/String; = "Call is dropped due to Wi-Fi backhaul is congested"

.field static final DECLINED:Ljava/lang/String; = "Declined"

.field private static final DEFAULT_CALL_INDEX:I = -0x1

.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x8

.field private static final EVENT_ADD_PARTICIPANTS:I = 0x11

.field private static final EVENT_CLOSE_SESSION:I = 0xb

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x10

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_ON_SET_LISTENER:I = 0x17

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xa

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RINGBACK_TONE:I = 0x9

.field private static final EVENT_RTT_MESSAGE_RECEIVED:I = 0xc

.field private static final EVENT_RTT_UPGRADE_CONFIRM_DONE:I = 0xf

.field private static final EVENT_SEND_DTMF:I = 0x13

.field private static final EVENT_SEND_RTT_MESSAGE:I = 0xd

.field private static final EVENT_SEND_RTT_MODIFY_REQUEST:I = 0xe

.field private static final EVENT_SEND_SIP_DTMF:I = 0x15

.field private static final EVENT_SIP_DTMF_RECEIVED:I = 0x16

.field private static final EVENT_TELEPHONY_DOWNGRADE_DUAL_VT:I = 0x18

.field private static final EVENT_TRANSFER:I = 0x14

.field private static final EVENT_VOICE_INFO_CHANGED:I = 0x12

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE:Ljava/lang/String; = "persist.dbg.call_encrypt_ovr"

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE_DEFAULT:I = 0x0

.field private static final RESET_ALERT_HANDOVER_TIME:I = 0x2

.field private static final RESET_TIME:J = 0x1b7740L

.field private static RESTORE_ANONYMOUS:I = 0x0

.field private static RESTORE_PARTICIPANT:I = 0x0

.field static final RTP_INACTIVITY:Ljava/lang/String; = "RTP inactivity"

.field public static final SUPP_NOTIFICATION_TYPE_MO:I = 0x0

.field public static final SUPP_NOTIFICATION_TYPE_MT:I = 0x1

.field public static final SUPP_SVC_CODE_INVALID:I = -0x1

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3

.field static final TMO_IP_PACKET_LOST:Ljava/lang/String; = "CD-021: ISP Problem"

.field static final TMO_WIFI_SIGNAL_LOST:Ljava/lang/String; = "CD-11: Wi-Fi signal lost"

.field private static USE_RESTORE_NUMBER:I = 0x0

.field private static final VOLUME_FOR_ALERT:I = 0x28

.field static final WIFI_DEGRADED:Ljava/lang/String; = "Call is dropped due to Wi-Fi signal is degraded"

.field static final WIFI_SIGNAL_LOST:Ljava/lang/String; = "Call is dropped as WiFi is lost"

.field private static mLocalParticipants:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMultiEndpoingCallEnd:[Ljava/lang/String; = null

.field private static mRestoreMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sToken:I = -0x1

.field private static viceCallEndSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnswerOptionTirConfig:I

.field private mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

.field private mCallId:I

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallee:Ljava/lang/String;

.field private mCameraId:Ljava/lang/String;

.field private mConfController:Lorg/codeaurora/ims/ImsConferenceController;

.field private mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

.field private mCrsCrbtListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/internal/ICrsCrbtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDc:Lorg/codeaurora/ims/DriverCallIms;

.field private mDisconnCause:I

.field private mDualVideoCapability:I

.field private mHandler:Landroid/os/Handler;

.field private mHostAddr:Ljava/lang/String;

.field private mHostAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

.field mImsVideoCallProvider:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

.field mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

.field private mInCall:Z

.field private mIsCallTerminatedDueToLowBattery:Z

.field mIsConferenceHostSession:Z

.field private mIsLowBattery:Z

.field private mIsMergeHostSession:Z

.field private mIsPendingHangup:Z

.field private mIsVideoAllowed:Z

.field private mIsVoiceAllowed:Z

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mMtSuppSvcCode:I

.field private mOldAudioQuality:I

.field private mPendingAddParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

.field private mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRestoreProp:I

.field private mRingbackToneRequest:Z

.field private mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

.field private mShouldRestoreAnonymous:Z

.field private mShouldRestoreParticipant:Z

.field private mShouldUseRestoreNumber:Z

.field private mSipDtmfInfo:Ljava/lang/String;

.field private mStateChangeReportingAllowed:Z

.field private mToken:I

.field private mVoWifiQuality:I

.field private mWifiAlertHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$72B-RiGYbagSycQxSWceHVr3CEg(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$setCrsCrbtListener$2(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BoOhg08IElN1AGLZICHeJSsnTOI(Lorg/codeaurora/ims/ImsCallSessionImpl;Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$transfer$1(Lcom/android/ims/internal/IImsCallSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CnQRmUXFntiou9qFL-L-uynHG44(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$transfer$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ghpNaagGbuStdCPOvfIndOMTAZE(Lorg/codeaurora/ims/ImsCallSessionImpl;ILorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$updateCrsStatus$5(ILorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qUljoo-AZWa53QOotNqkM1ImneQ(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$handleSipDtmfReceived$4(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uliLs79jNhH2ngLFirx4Hn89Jt0(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$setCrsCrbtListener$3(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCallProfile(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/telephony/ims/ImsCallProfile;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDc(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingbackToneRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDisconnCause(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRingbackToneRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcanIgnoreDialError(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canIgnoreDialError(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoClose(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doClose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSipDtmfReceived(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleSipDtmfReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeDisplaySuppServiceErrorMsg(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeNotifyConferenceState(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyConferenceState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeNotifyPendingCallEndReason(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyPendingCallEndReason()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessAddParticipantResponse(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processAddParticipantResponse(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessAddParticipantsList(Lorg/codeaurora/ims/ImsCallSessionImpl;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processAddParticipantsList([Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBeepForAlert(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startBeepForAlert()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmLocalParticipants()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 851
    const-string v9, "1014|Call completed elsewhere"

    const-string v10, "1014|call completion elsewhere"

    const-string v0, "332|simultaneous call limit has already been reached"

    const-string v1, "332|Forbidden: Simultaneous Call Limit Has Already Been Reached"

    const-string v2, "338|another device sent all devices busy response"

    const-string v3, "501|call completion elsewhere"

    const-string v4, "501|call has been pulled by another device"

    const-string v5, "510|call has been pulled by another device"

    const-string v6, "501|another device sent all devices busy response"

    const-string v7, "510|another device sent all devices busy response"

    const-string v8, "1014|call has been pulled by another device"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMultiEndpoingCallEnd:[Ljava/lang/String;

    .line 864
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->viceCallEndSet:Ljava/util/Map;

    .line 4277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4293
    sput v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->RESTORE_PARTICIPANT:I

    const/4 v0, 0x2

    .line 4294
    sput v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->RESTORE_ANONYMOUS:I

    const/4 v0, 0x4

    .line 4295
    sput v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->USE_RESTORE_NUMBER:I

    .line 4297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsConferenceController;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 326
    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/QImsSessionBase;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    const/4 p0, 0x0

    .line 156
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 p1, -0x1

    .line 159
    iput p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 160
    new-instance p2, Landroid/telephony/ims/ImsCallProfile;

    const/4 p3, 0x1

    const/4 p4, 0x7

    invoke-direct {p2, p3, p4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 162
    new-instance p2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p2, p3, p4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 164
    new-instance p2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p2}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 166
    new-instance p2, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {p2, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 167
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    const/4 p2, 0x0

    .line 168
    iput p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 169
    iput p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    .line 170
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 171
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 172
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 173
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 177
    iput p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mToken:I

    .line 178
    iput p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDualVideoCapability:I

    .line 184
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    .line 188
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 189
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 289
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 291
    iput-boolean p3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 293
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    .line 295
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 296
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 297
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 298
    iput p3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 300
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 p1, 0x2

    .line 302
    iput p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    .line 303
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    .line 304
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    .line 305
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    .line 319
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    .line 531
    iput p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mOldAudioQuality:I

    .line 4279
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHostAddresses:Ljava/util/ArrayList;

    .line 4286
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreParticipant:Z

    .line 4288
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreAnonymous:Z

    .line 4290
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldUseRestoreNumber:Z

    .line 4292
    iput p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreProp:I

    if-nez p5, :cond_1

    const p1, 0x7f010003

    .line 329
    invoke-direct {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p3

    .line 330
    :goto_1
    invoke-direct {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 331
    iput-boolean p5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 332
    iput-object p7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 333
    invoke-virtual {p7, v0}, Lorg/codeaurora/ims/ImsConferenceController;->registerListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)V

    .line 334
    iget-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 p5, 0xc

    invoke-virtual {p1, p4, p5, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRttMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 p5, 0x12

    invoke-virtual {p1, p4, p5, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoiceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    iget-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 p5, 0x16

    invoke-virtual {p1, p4, p5, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSipDtmfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    invoke-direct {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->initMultiEndPointCallEndTable()V

    .line 340
    const-string p0, "call.conference.restore"

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreProp:I

    .line 341
    const-string p0, "moto_should_restore_unknown_participant_bool"

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierConfigEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    iget p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreProp:I

    sget p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->RESTORE_PARTICIPANT:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move p0, p2

    goto :goto_3

    :cond_3
    :goto_2
    move p0, p3

    :goto_3
    iput-boolean p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreParticipant:Z

    if-eqz p0, :cond_8

    .line 345
    const-string p0, "moto_should_restore_anonymous_bool"

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierConfigEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    iget p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreProp:I

    sget p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->RESTORE_ANONYMOUS:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_4

    goto :goto_4

    :cond_4
    move p0, p2

    goto :goto_5

    :cond_5
    :goto_4
    move p0, p3

    :goto_5
    iput-boolean p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreAnonymous:Z

    .line 349
    const-string p0, "moto_use_restore_number_for_conference"

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierConfigEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    iget p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreProp:I

    sget p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->USE_RESTORE_NUMBER:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_6

    goto :goto_6

    :cond_6
    move p3, p2

    :cond_7
    :goto_6
    iput-boolean p3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldUseRestoreNumber:Z

    .line 353
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "mShouldRestoreParticipant "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreParticipant:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mShouldRestoreAnonymous "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreAnonymous:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mShouldUseRestoreNumber "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldUseRestoreNumber:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V
    .locals 8

    .line 394
    new-instance v6, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v2, p2

    move-object v1, p3

    move-object v4, p4

    move v5, p5

    move v3, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsConferenceController;)V

    .line 397
    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 398
    new-instance p0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 399
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x9

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V
    .locals 8

    .line 407
    new-instance v6, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v2, p2

    move-object v1, p3

    move-object v4, p4

    move v5, p5

    move v3, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsConferenceController;)V

    .line 411
    new-instance p0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 412
    iget p0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 413
    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 415
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 416
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 417
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCrsStatus(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 418
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 420
    new-instance p0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    return-void
.end method

.method private IsMultiEndpointCallEndCause(Landroid/telephony/ims/ImsReasonInfo;)Z
    .locals 3

    .line 891
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 893
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 896
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->viceCallEndSet:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsMultiEndpointCallEndCause=true; Code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ; message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 897
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private alertForHandoverFailed()V
    .locals 2

    .line 3766
    const-string v0, "config_regional_wifi_calling_notificaion_enable"

    const-string v1, "com.android.settings"

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3769
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startAlert()V

    :cond_0
    return-void
.end method

.method private canDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1

    .line 2958
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2959
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result p0

    if-nez p0, :cond_1

    .line 2960
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private canIgnoreDialError(Ljava/lang/Throwable;)Z
    .locals 4

    .line 4143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "canIgnoreDialError exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4146
    :try_start_0
    throw p1
    :try_end_0
    .catch Lorg/codeaurora/ims/ImsRilException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 4166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canIgnoreDialError: Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p1

    .line 4148
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    return v0

    .line 4151
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isAidlReorderingSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 4152
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result p1

    .line 4153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "canIgnoreDialError errorCode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    return v0

    :cond_1
    :pswitch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xf6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doClose()V
    .locals 4

    .line 1687
    const-string v0, "doClose!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1689
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    const-string v0, "Received Session Close request while it is alive"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1693
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1694
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    .line 1695
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->close()V

    .line 1697
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMergeHostSession()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1698
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_3

    .line 1699
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->dispose()V

    .line 1700
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    goto :goto_0

    .line 1703
    :cond_2
    const-string v0, "Not clearing listener, ongoing merge."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1705
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_4

    .line 1706
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1708
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionClosed()V

    .line 1709
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1710
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-eqz v0, :cond_5

    .line 1711
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsConferenceController;->unregisterListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)Z

    .line 1712
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 1714
    :cond_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_6

    .line 1715
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForVoiceInfo(Landroid/os/Handler;)V

    .line 1716
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSipDtmfInfo(Landroid/os/Handler;)V

    .line 1717
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1719
    :cond_6
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 1720
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1721
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1722
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1723
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1724
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v0, 0x0

    .line 1725
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mInCall:Z

    .line 1726
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 1727
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1728
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 1729
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 1730
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1731
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 1732
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    :cond_7
    return-void
.end method

.method private doneTerminate()Z
    .locals 1

    .line 1112
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1116
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->terminate(I)V

    .line 1117
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 7

    if-eqz p1, :cond_8

    .line 1979
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1992
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    .line 1998
    :goto_0
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 1999
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 2000
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "="

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2002
    aget-object v3, v2, v0

    if-eqz v3, :cond_5

    .line 2007
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 2008
    aget-object v3, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2009
    aget-object v3, v3, v5

    goto :goto_1

    .line 2011
    :cond_1
    aget-object v3, v2, v0

    .line 2025
    :goto_1
    const-string v4, "AdditionalCallInfo"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2026
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/16 v4, 0x13

    .line 2028
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2029
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AdditionalCallInfo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2030
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v4, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "android.telephony.ims.extra.ADDITIONAL_SIP_INVITE_FIELDS"

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2034
    :cond_2
    const-string v4, "DisplayText"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2035
    aget-object v3, v2, v5

    .line 2036
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "DisplayText = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 2037
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2038
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "android.telephony.ims.extra.CALL_SUBJECT"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2042
    :cond_3
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    aget-object v2, v2, v5

    invoke-virtual {v4, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2014
    :cond_5
    const-string p1, "Bad extra string from lower layers!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2018
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Element "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is null in CallDetails Extras!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 1980
    :cond_8
    :goto_3
    const-string p1, "Null dcUpdate/CallProfile in extractCallDetailsIntoCallProfile"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private extractCallExtrasIntoCallDetails(Landroid/os/Bundle;Lorg/codeaurora/ims/CallDetails;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 2975
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 2980
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2981
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v2, ""

    goto :goto_1

    .line 2982
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2984
    aput-object v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2987
    :cond_1
    invoke-virtual {p2, p0}, Lorg/codeaurora/ims/CallDetails;->setExtras([Ljava/lang/String;)V

    return-void

    .line 2989
    :cond_2
    const-string p1, "No extras in ImsCallProfile to map into CallDetails."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private extractCallForwardInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2933
    const-string v1, "[\\r\\n]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 2936
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2937
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2938
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extractCallForwardInfoDetails :: callForwardInfoHops["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private failDialRequest(I)V
    .locals 2

    .line 2951
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2952
    new-instance v0, Lorg/codeaurora/ims/ImsRilException;

    const-string v1, "Dial Failed"

    invoke-direct {v0, p1, v1}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2954
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static fromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/CallComposerInfo;
    .locals 10

    .line 2573
    sget-object v0, Lorg/codeaurora/ims/CallComposerInfo$Location;->UNKNOWN:Lorg/codeaurora/ims/CallComposerInfo$Location;

    .line 2574
    const-string v1, "android.telephony.ims.extra.CALL_SUBJECT"

    invoke-virtual {p0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2575
    const-string v2, "android.telephony.ims.extra.PRIORITY"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v2

    .line 2577
    const-string v3, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {p0, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2579
    const-string v4, "android.telephony.ims.extra.LOCATION"

    invoke-virtual {p0, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    if-eqz p0, :cond_0

    .line 2581
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    .line 2582
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 2583
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 2584
    new-instance v4, Lorg/codeaurora/ims/CallComposerInfo$Location;

    invoke-direct/range {v4 .. v9}, Lorg/codeaurora/ims/CallComposerInfo$Location;-><init>(FDD)V

    move-object v0, v4

    .line 2587
    :cond_0
    new-instance p0, Lorg/codeaurora/ims/CallComposerInfo;

    invoke-direct {p0, v2, v1, v3, v0}, Lorg/codeaurora/ims/CallComposerInfo;-><init>(ILjava/lang/String;Landroid/net/Uri;Lorg/codeaurora/ims/CallComposerInfo$Location;)V

    return-object p0
.end method

.method private static getCallMode(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2190
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v1, :cond_1

    move v1, v0

    .line 2191
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2192
    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v2, v2, v1

    .line 2193
    iget v3, v2, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v3, v4, :cond_0

    .line 2194
    iget-object p0, v2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object p0, p0, v0

    iget p0, p0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getCallModeFromRadioTech(I)I
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0xe

    return p0
.end method

.method public static getLineInfo(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 3

    if-nez p0, :cond_0

    .line 2747
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object p0

    return-object p0

    .line 2749
    :cond_0
    const-string v0, "originatingNumber"

    .line 2750
    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2751
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2754
    :cond_1
    const-string v1, "lineType"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p0

    .line 2756
    new-instance v1, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-direct {v1, v0, p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 2752
    :cond_2
    :goto_0
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object p0

    return-object p0
.end method

.method private getMtSuppSvcCode()I
    .locals 0

    .line 1248
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    return p0
.end method

.method private getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 3750
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 3753
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 3755
    :cond_1
    const-string v1, "bool"

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 3756
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3758
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private getRestoreUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 4325
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreMap:Ljava/util/Map;

    const-string v1, "user "

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4326
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in mRestoreMap "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4331
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getUriAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 4332
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSelfAddress(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 4334
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "anonymous"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreAnonymous:Z

    if-nez v5, :cond_1

    goto :goto_0

    .line 4342
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 4343
    sget-object v2, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4344
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getUriAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 4345
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getRestoreUser userNumber "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " restoreUserNumber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4346
    invoke-static {v3}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4345
    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4347
    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldUseRestoreNumber:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 4353
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in mLocalParticipants "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 4355
    :cond_3
    const-string p1, " mLocalParticipants is empty, cannot find restore number "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 4337
    sget-object p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-object v4
.end method

.method private getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 481
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    .line 482
    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p1, :cond_0

    iget-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 484
    iget-object p1, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object p1, p1, v0

    iget v0, p1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RestrictCause is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 3938
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    .line 3939
    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p1, :cond_0

    .line 3940
    iget v0, v3, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3945
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RTT: getRttMode rtt mode = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private getSubId()I
    .locals 2

    .line 4402
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4404
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4405
    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getSuppSvcErrorMessage(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x7f030005

    goto :goto_0

    :cond_0
    const p1, 0x7f030006

    goto :goto_0

    :cond_1
    const p1, 0x7f030004

    .line 3703
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getToken()I
    .locals 2

    .line 4268
    sget v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->sToken:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    sput v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->sToken:I

    return v0
.end method

.method private getUriAddress(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 4313
    const-string p0, ""

    return-object p0

    .line 4315
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    .line 4316
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4317
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private handleSipDtmfReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 3554
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3558
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    .line 3559
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 3555
    :cond_1
    :goto_0
    const-string p1, "handleSipDtmfReceived invalid info"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2735
    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initMultiEndPointCallEndTable()V
    .locals 10

    .line 867
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMultiEndpoingCallEnd:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 868
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 869
    const-string v5, "|"

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 870
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    goto :goto_2

    .line 875
    :cond_0
    :try_start_0
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    .line 876
    aget-object v5, v5, v7

    .line 878
    sget-object v7, Lorg/codeaurora/ims/ImsCallSessionImpl;->viceCallEndSet:Ljava/util/Map;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-direct {v8, v9, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 879
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 878
    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 882
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid multiendpoint Call End string found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 886
    :cond_3
    const-string v0, "No carrier multiendpoint end code defined."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private inviteParticipant(Ljava/lang/String;)V
    .locals 3

    .line 3440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inviteParticipant participant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3441
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3442
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    .line 3443
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3442
    invoke-virtual {v0, p1, v1, v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    return-void
.end method

.method private isCallMarkedUnwanted()Z
    .locals 2

    .line 3210
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3211
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3212
    invoke-virtual {v0}, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3213
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasUserMarkedCallUnwanted()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private isCarrierConfigEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 4389
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 4390
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 4391
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4394
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4397
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCarrierConfigEnabled key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private isCarrierOneDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1

    .line 2945
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2946
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2947
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isConfigEnabled(I)Z
    .locals 0

    .line 3826
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private isCrsDataChangedValid(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2536
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2537
    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2538
    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2539
    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result p0

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isDualVtSupported()Z
    .locals 0

    .line 4259
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDualVideoCapability:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLowBatteryVideoCall()Z
    .locals 1

    .line 3252
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isMultiEndpointFailCause(I)Z
    .locals 0

    const/16 p0, 0x3f6

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3f7

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3f8

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isSelfAddress(Ljava/lang/String;)Z
    .locals 4

    .line 4363
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4364
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4366
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 4367
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4368
    const-string p1, "isSelfAddress(): true, meet host info in mHostAddr"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 4373
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getSelfUri()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4375
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 4376
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 4377
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getUriAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 4378
    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isSelfAddress() selfId: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " addr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 459
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 460
    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p0, :cond_1

    .line 461
    iget p0, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    iget p0, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private isSuppSvcToastMsgEnabled()Z
    .locals 2

    .line 3680
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 3681
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3680
    const-string v0, "call.toast.supp_svc_fail"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method private isTerminateLowBatteryCall()Z
    .locals 3

    .line 3237
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_1

    .line 3238
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3244
    :cond_0
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isUserRejectedFailCause(Landroid/telephony/ims/ImsReasonInfo;)Z
    .locals 1

    .line 4014
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p0

    const/16 v0, 0x169

    if-ne p0, v0, :cond_0

    .line 4015
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4016
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Declined"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoCrsFallback(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2546
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2551
    :cond_0
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_1

    return v0

    .line 2556
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v2}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v2

    if-ne v1, v2, :cond_2

    return v0

    .line 2565
    :cond_2
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result p0

    const/4 v1, 0x2

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_3

    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2567
    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result p0

    and-int/2addr p0, v1

    if-nez p0, :cond_3

    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2569
    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private synthetic lambda$handleSipDtmfReceived$4(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2

    .line 3561
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onSipDtmfReceived(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3563
    :catchall_0
    const-string p1, "onSipDtmfReceived exception"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCrsCrbtListener$2(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 3

    .line 3527
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 3528
    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v2, v2, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 3527
    invoke-interface {p1, v0, v1, v2}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onCrsDataUpdated(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3530
    :catchall_0
    const-string p1, "onCrsDataUpdate exception"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCrsCrbtListener$3(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2

    .line 3535
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onSipDtmfReceived(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3537
    :catchall_0
    const-string p1, "onSipDtmfReceived exception"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$transfer$0(I)V
    .locals 6

    .line 3183
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    .line 3185
    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const/4 v2, 0x2

    const/4 v3, 0x0

    move v4, p1

    .line 3183
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method private synthetic lambda$transfer$1(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2

    .line 3179
    :try_start_0
    const-string v0, "handleTransfer"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3180
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3182
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda4;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid call id for the other session. ex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteException caught = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateCrsStatus$5(ILorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 1

    .line 3607
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-boolean p2, p2, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    invoke-interface {p3, v0, p1, p2}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onCrsDataUpdated(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3610
    :catchall_0
    const-string p1, "onCrsDataUpdate exception"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 2078
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x13

    const/16 v4, 0x12

    const/16 v5, 0x11

    const/16 v6, 0x10

    const/16 v7, 0xf

    const/16 v8, 0xe

    const/16 v9, 0xd

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "GSM_HR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    move/from16 v22, v3

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "GSM_FR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    move/from16 v22, v4

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "G711AB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    move/from16 v22, v5

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "EVS_WB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    move/from16 v22, v6

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "EVS_NB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    move/from16 v22, v7

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "EVS_FB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    move/from16 v22, v8

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "EVRC_B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    move/from16 v22, v9

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "AMR_WB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    move/from16 v22, v10

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "AMR_NB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    move/from16 v22, v11

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "GSM_EFR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    move/from16 v22, v12

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "QCELP13K"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    move/from16 v22, v13

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "G711U"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    move/from16 v22, v14

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "G711A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    move/from16 v22, v15

    goto :goto_0

    :sswitch_d
    const-string v2, "G729"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    move/from16 v22, v16

    goto :goto_0

    :sswitch_e
    const-string v2, "G723"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    move/from16 v22, v17

    goto :goto_0

    :sswitch_f
    const-string v2, "G722"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_0

    :cond_10
    move/from16 v22, v18

    goto :goto_0

    :sswitch_10
    const-string v2, "EVRC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_0

    :cond_11
    move/from16 v22, v19

    goto :goto_0

    :sswitch_11
    const-string v2, "EVS_SWB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_0

    :cond_12
    move/from16 v22, v1

    goto :goto_0

    :sswitch_12
    const-string v2, "EVRC_WB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_0

    :cond_13
    move/from16 v22, v20

    goto :goto_0

    :sswitch_13
    const-string v2, "EVRC_NW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_0

    :cond_14
    move/from16 v22, v21

    .line 2140
    :goto_0
    const-string v2, "ImsCallSessionImpl"

    packed-switch v22, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported codec "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, v21

    goto :goto_1

    :pswitch_0
    move v1, v12

    goto :goto_1

    :pswitch_1
    move v1, v13

    goto :goto_1

    :pswitch_2
    move v1, v7

    goto :goto_1

    :pswitch_3
    move v1, v4

    goto :goto_1

    :pswitch_4
    move v1, v5

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x14

    goto :goto_1

    :pswitch_6
    move/from16 v1, v17

    goto :goto_1

    :pswitch_7
    move/from16 v1, v20

    goto :goto_1

    :pswitch_8
    move v1, v14

    goto :goto_1

    :pswitch_9
    move/from16 v1, v19

    goto :goto_1

    :pswitch_a
    move v1, v11

    goto :goto_1

    :pswitch_b
    move v1, v9

    goto :goto_1

    :pswitch_c
    move v1, v6

    goto :goto_1

    :pswitch_d
    move v1, v10

    goto :goto_1

    :pswitch_e
    move v1, v8

    goto :goto_1

    :pswitch_f
    move/from16 v1, v18

    goto :goto_1

    :pswitch_10
    move v1, v3

    goto :goto_1

    :pswitch_11
    move/from16 v1, v16

    goto :goto_1

    :pswitch_12
    move v1, v15

    .line 2143
    :goto_1
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AudioQuality is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x268dd77a -> :sswitch_13
        -0x268dd678 -> :sswitch_12
        -0x2673319f -> :sswitch_11
        0x20aaa2 -> :sswitch_10
        0x211b10 -> :sswitch_f
        0x211b11 -> :sswitch_e
        0x211b17 -> :sswitch_d
        0x4024351 -> :sswitch_c
        0x4024365 -> :sswitch_b
        0x30932dd2 -> :sswitch_a
        0x3de5f773 -> :sswitch_9
        0x734ec6ed -> :sswitch_8
        0x734ec804 -> :sswitch_7
        0x7aa095e5 -> :sswitch_6
        0x7aa17059 -> :sswitch_5
        0x7aa17151 -> :sswitch_4
        0x7aa17268 -> :sswitch_3
        0x7c462711 -> :sswitch_2
        0x7dde20ea -> :sswitch_1
        0x7dde2128 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_13
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mapCallTypeFromProfile(I)I
    .locals 4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v0

    :cond_2
    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    return v1

    :cond_5
    const/16 p0, 0xa

    return p0
.end method

.method private mapResponseToMode(Z)I
    .locals 0

    return p1
.end method

.method private maybeCreatePendingEndCallReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 3026
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3030
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeCreateVideoProvider(Z)V
    .locals 3

    .line 366
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_1

    .line 368
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p0, v1, v2}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    :cond_1
    if-eqz p1, :cond_2

    .line 371
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez p1, :cond_2

    .line 372
    const-string p1, "maybeCreateVideoProvider: Creating VideoCallProvider"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    new-instance p1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {p1, p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 374
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 377
    :cond_2
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez p1, :cond_3

    goto :goto_0

    .line 380
    :cond_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVtSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    if-nez p1, :cond_4

    .line 381
    const-string p1, "maybeCreateVideoProvider: Creating secondary video call provider"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    new-instance p1, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    :cond_4
    :goto_0
    return-void
.end method

.method private maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 1

    .line 3662
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSuppSvcToastMsgEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSuppSvcErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3664
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private maybeNotifyCallTypeChanging(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 1

    .line 1093
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyCallTypeChanging(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeNotifyConferenceState()V
    .locals 1

    .line 3002
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3006
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ConfInfo;->getConfUriList()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 3007
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->restoreUnknownParticipants()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-eqz v0, :cond_2

    .line 3008
    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    .line 3009
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3012
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private maybeNotifyPendingCallEndReason()V
    .locals 2

    .line 3016
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3019
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maybeNotifyPendingCallEndReason - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3020
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    const/4 v0, 0x0

    .line 3021
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeOverrideReason(I)I
    .locals 1

    .line 3217
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallMarkedUnwanted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3219
    const-string p1, "Overriden Reason : 365"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x16d

    return p0

    :cond_0
    return p1
.end method

.method private maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z
    .locals 5

    .line 912
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Call details updated. currentCallDetails= "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to newCallDetails= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private maybeUpdateCallForwardInfoExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 1

    .line 2920
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2921
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 2923
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallForwardInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2921
    const-string p1, "CallHistoryInfo"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    .line 2924
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2925
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 2927
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallForwardInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2925
    const-string p1, "CallDiversionInfo"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private maybeUpdateCallProgressInfoExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 2620
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    if-ne v0, v1, :cond_0

    .line 2621
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getIsCalledPartyRinging()Z

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->getIsCalledPartyRinging()Z

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 2625
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "isCalledPartyRinging"

    .line 2626
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getIsCalledPartyRinging()Z

    move-result v2

    .line 2625
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2628
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2630
    :goto_0
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v2}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    .line 2632
    :cond_2
    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v3}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v3

    :goto_1
    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    .line 2636
    :cond_3
    const-string v2, "CallProgReasonText"

    const-string v3, "CallProgReasonCode"

    const-string v4, "CallProgInfoType"

    if-eqz v0, :cond_4

    .line 2637
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq p1, v0, :cond_5

    .line 2639
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2641
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v3, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2643
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v0, ""

    invoke-virtual {p1, v2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    const-string p1, "Setting Call Progress info type to invalid"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2649
    :cond_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 2650
    invoke-virtual {v1}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v1

    .line 2649
    invoke-virtual {v0, v4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2651
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 2652
    invoke-virtual {v1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonCode()I

    move-result v1

    .line 2651
    invoke-virtual {v0, v3, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2653
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 2654
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonText()Ljava/lang/String;

    move-result-object p1

    .line 2653
    invoke-virtual {p0, v2, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private maybeUpdateComputedAudioQualityExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 2658
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v0

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 2659
    invoke-virtual {v1}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2663
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "CallAudioQuality"

    if-ne v0, v1, :cond_1

    .line 2665
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2666
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2667
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->removeExtras(Landroid/os/Bundle;Ljava/util/List;)V

    return-void

    .line 2671
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 2672
    invoke-virtual {p1}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result p1

    .line 2671
    invoke-virtual {p0, v2, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private maybeUpdateCrbtExtra(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 8

    .line 2677
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v0, :cond_0

    return-void

    .line 2684
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v2, 0x1

    const-string v3, "isCrbtCall"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-ne v0, v4, :cond_2

    :cond_1
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2688
    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2689
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2691
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v3, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2692
    const-string p1, "maybeUpdateCrbtExtra - correct call type to voice and reset Crbt extra."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2696
    :cond_2
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_3

    .line 2698
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v3, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2699
    const-string p1, "maybeUpdateCrbtExtra - reset Crbt extra"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2706
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isCrbtSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2707
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallDetails;->isCrbtCall()Z

    move-result v0

    move v1, v5

    goto :goto_0

    :cond_4
    move v1, v2

    move v0, v5

    .line 2711
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "maybeUpdateCrbtExtra - isCrbtCall : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isCrbtCallBackwardCompatibility : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2713
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne p1, v4, :cond_6

    goto :goto_1

    :cond_6
    move v2, v5

    :goto_1
    invoke-virtual {p0, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private maybeUpdateCrsExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6

    .line 2592
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2596
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCrsDataChangedValid(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 2599
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v0

    const-string v1, "callId"

    const-string v2, "isPreparatory"

    const-string v3, "originalCallType"

    const-string v4, "crsType"

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2600
    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_2

    .line 2602
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2603
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2604
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2605
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2606
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2607
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->removeExtras(Landroid/os/Bundle;Ljava/util/List;)V

    return-void

    .line 2610
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "maybeUpdateCrsExtras - "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2611
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v5}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2612
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2613
    invoke-virtual {v4}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v4

    .line 2612
    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2614
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-boolean p1, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    invoke-virtual {v0, v2, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2616
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {p1, v1, p0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    return-void
.end method

.method private maybeUpdateLowBatteryStatus()Z
    .locals 4

    .line 1074
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1075
    const-string v0, "merge is in progress so ignore low battery update"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 1079
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result v0

    .line 1080
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 1081
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maybeUpdateLowBatteryStatus isLowBattery: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsLowBattery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 1085
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 1086
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "LowBattery"

    invoke-virtual {p0, v2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    :cond_2
    return v1
.end method

.method private maybeUpdateVoWifiCallQualityExtra(IZ)V
    .locals 2

    .line 3834
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVoWiFiCallQualityEnabled(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3838
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3842
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maybeUpdateVoWifiCallQualityExtra Quality : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3843
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "VoWiFiCallQuality"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_2

    .line 3847
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private muteStateReporting()V
    .locals 2

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call session state reporting muted! session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    return-void
.end method

.method private parseErrorCode(Ljava/lang/String;)I
    .locals 0

    .line 1423
    const-string p0, "CD-04"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x44c

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private processAddParticipantResponse(Z)V
    .locals 2

    .line 3407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processAddParticipantResponse: success = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " pending = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 3408
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3407
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3409
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3410
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3411
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processNextParticipant()V

    :cond_0
    return-void
.end method

.method private processAddParticipantsList([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 3383
    :cond_0
    array-length v1, p1

    .line 3384
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processAddParticipantsList: no of particpants = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pending = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 3385
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3384
    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v1, :cond_3

    .line 3387
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 3391
    :goto_1
    array-length v2, p1

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 3392
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 3395
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processNextParticipant()V

    :cond_3
    return-void
.end method

.method private processNextParticipant()V
    .locals 2

    .line 3401
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3402
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->inviteParticipant(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private restoreUnknownParticipants()Landroid/telephony/ims/ImsConferenceState;
    .locals 9

    .line 4417
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreParticipant:Z

    if-nez v0, :cond_0

    .line 4418
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    return-object p0

    .line 4420
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 4424
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    .line 4426
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4427
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 4428
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4429
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4430
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 4431
    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4432
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRestoreUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4433
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "restoreUnknownParticipants "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " restoreUser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4434
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 4437
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4442
    const-string v4, "endpoint"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4443
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4447
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " restoreUnknownParticipants map "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4448
    sput-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreMap:Ljava/util/Map;

    .line 4450
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    return-object p0

    .line 4421
    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    return-object p0
.end method

.method private setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 5

    .line 1122
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 1124
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toAudioCodec(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v3

    invoke-static {v3, v2, v1}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(III)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    .line 1123
    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1127
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1131
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_2

    .line 1132
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1133
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v0, :cond_2

    .line 1134
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 1135
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    .line 1134
    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1136
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1137
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 1138
    :cond_1
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 1136
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 1140
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p1, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    :cond_2
    return-void
.end method

.method private setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6

    .line 1147
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 1149
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v2

    .line 1152
    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p1, v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 1163
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 1166
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 1169
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    .line 1175
    :goto_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance p1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method private setMergeHostSession(Z)V
    .locals 0

    .line 4069
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    return-void
.end method

.method private setMtSuppSvcCode(I)V
    .locals 0

    .line 1244
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    return-void
.end method

.method private setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 5

    .line 1180
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 1182
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p1, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result p1

    .line 1185
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 1186
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMtSuppSvcCode()I

    move-result v3

    if-ne v3, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    .line 1200
    :goto_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance p1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method private startAlert()V
    .locals 1

    .line 3774
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3775
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    .line 3799
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startBeepForAlert()V
    .locals 2

    .line 3803
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 3820
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;->start()V

    .line 3822
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "Due to network conditions, the call may be dropped"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static toAudioCodec(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2062
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0}, Lorg/codeaurora/ims/AudioQuality;->getCodec()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {p0}, Lorg/codeaurora/ims/AudioQuality;->getCodec()I

    move-result p0

    return p0

    .line 2064
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v1, "Codec"

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static toImsCallProfile(Lorg/codeaurora/ims/MultiIdentityLineInfo;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2722
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2723
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2725
    :cond_1
    const-string v1, "terminatingNumber"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    const-string v0, "lineType"

    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineType()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private static toImsCallProfile(Lorg/codeaurora/ims/CallComposerInfo;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 2503
    :cond_0
    const-string v0, "android.telephony.ims.extra.PRIORITY"

    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2505
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2506
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2507
    const-string v1, "android.telephony.ims.extra.CALL_SUBJECT"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2512
    const-string v1, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getOrganization()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2516
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2517
    const-string v0, "android.telephony.ims.extra.IS_BUSINESS_CALL"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2519
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2521
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2522
    invoke-virtual {v0}, Landroid/location/Location;->reset()V

    .line 2523
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 2524
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 2525
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object p0

    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getRadius()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/location/Location;->setAccuracy(F)V

    .line 2526
    const-string p0, "android.telephony.ims.extra.LOCATION"

    invoke-virtual {p1, p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static toImsCallProfile(Lorg/codeaurora/ims/EcnamInfo;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2489
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/EcnamInfo;->getIconUrl()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2491
    const-string v0, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unMuteStateReporting()V
    .locals 2

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call session state reporting unmuted. session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 523
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method private updateAudioQuality()Z
    .locals 6

    .line 536
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 537
    const-string v0, "updateAudioQuality this call session is closed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 540
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v2, :cond_5

    .line 541
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 542
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 544
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v3, 0x12

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v3, 0x13

    if-eq v2, v3, :cond_2

    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 551
    :goto_1
    iget v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 556
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v1

    .line 565
    :goto_2
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mOldAudioQuality:I

    if-eq v0, v5, :cond_6

    .line 566
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    iput v5, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    move v1, v4

    goto :goto_3

    :cond_5
    move v5, v1

    .line 572
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updateAudioQuality oldAudioQuality is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mOldAudioQuality:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " audioQuality is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    iput v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mOldAudioQuality:I

    return v1
.end method

.method private updateCrsStatus(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 5

    if-nez p1, :cond_0

    .line 3584
    const-string p1, "Null dcUpdate in updateCrsStatus"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3587
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_1

    .line 3588
    const-string p1, "Null mDc in updateCrsStatus"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3592
    :cond_1
    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iget-boolean v1, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 3593
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v4, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iput-boolean v4, v1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 3595
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 3596
    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/CrsData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3597
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CrsData;->setCrsType(I)V

    .line 3598
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CrsData;->setOriginalCallType(I)V

    goto :goto_1

    :cond_3
    move v2, v0

    .line 3602
    :goto_1
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    if-nez v0, :cond_4

    goto :goto_2

    .line 3603
    :cond_4
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v3

    :goto_2
    if-eqz v2, :cond_5

    .line 3605
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v1, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v3, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda5;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;ILorg/codeaurora/ims/DriverCallIms;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_5
    return-void
.end method

.method private updateDualVideoExtraToAudioOnly(I)Z
    .locals 1

    .line 4224
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4227
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string p1, "dualVtCallType"

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 4232
    :cond_1
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 2210
    const-string v1, "updateImsCallProfile called with dc null"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2214
    :cond_0
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v2, :cond_1

    .line 2215
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2220
    :cond_1
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v2, :cond_7

    .line 2221
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallMode(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v2

    .line 2222
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v6, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0x15

    if-ne v2, v8, :cond_2

    move v8, v5

    goto :goto_0

    :cond_2
    move v8, v4

    :goto_0
    if-eq v6, v8, :cond_3

    .line 2227
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2230
    :cond_3
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v6

    .line 2234
    iget-object v7, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v8, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v7, v8, :cond_6

    if-nez v6, :cond_6

    iget-object v7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v7, :cond_6

    .line 2237
    iget-object v6, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v6

    const/16 v7, 0xd

    if-eqz v6, :cond_5

    .line 2238
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isVoiceSupportedOverWifi()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_1
    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v7

    goto :goto_2

    .line 2242
    :cond_5
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isVideoSupportedOverWifi()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 2247
    :cond_6
    :goto_2
    iget-object v7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v7, v8, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2250
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v7, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2251
    invoke-virtual {v7}, Lorg/codeaurora/ims/CallDetails;->isRadioTech5G()Z

    move-result v7

    .line 2250
    const-string v8, "isCall5G"

    invoke-virtual {v6, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_7
    move v2, v4

    .line 2259
    :goto_3
    iget-boolean v6, v1, Lorg/codeaurora/ims/DriverCallIms;->isEmergency:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_8

    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v6

    if-eq v6, v7, :cond_8

    .line 2262
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "e_call"

    invoke-virtual {v6, v8, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2264
    :cond_8
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "callReason"

    invoke-virtual {v6, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2265
    iget-object v9, v1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2266
    iget-object v6, v1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, v1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    .line 2271
    :cond_9
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v9, v1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2267
    :cond_a
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2268
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2269
    iget-object v8, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8, v6}, Lorg/codeaurora/ims/ImsCallUtils;->removeExtras(Landroid/os/Bundle;Ljava/util/List;)V

    .line 2274
    :cond_b
    :goto_5
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "oi"

    iget-object v9, v1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "cna"

    iget-object v9, v1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v8, v1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 2277
    invoke-static {v8}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v8

    .line 2276
    const-string v9, "oir"

    invoke-virtual {v6, v9, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2278
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v8, v1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 2279
    invoke-static {v8}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v8

    .line 2278
    const-string v9, "cnap"

    invoke-virtual {v6, v9, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2280
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v8, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v8, v8, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    const-string v9, "CallSubstate"

    invoke-virtual {v6, v9, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2282
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "CallEncryption"

    iget-boolean v9, v1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v6, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2284
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "updateImsCallProfile :: Packing encryption="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " in mCallProfile\'s extras."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2287
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateCallForwardInfoExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2293
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v6, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2294
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-boolean v9, v1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v6, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2298
    :cond_c
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "local_paused"

    invoke-virtual {v6, v8, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2300
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v9, "prev_call_type"

    invoke-virtual {v6, v9, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2309
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->isConfSupportIndicated()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2310
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2312
    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v10, v10, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v10}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2313
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->isVideoConfSupported()Z

    move-result v10

    goto :goto_6

    :cond_d
    move v10, v5

    .line 2310
    :goto_6
    const-string v11, "conference_avail"

    invoke-virtual {v6, v11, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2316
    :cond_e
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v6, v1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v6, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2317
    :cond_f
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v10, v10, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    const-string v11, "SessionModificationCause"

    invoke-virtual {v6, v11, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2321
    :cond_10
    invoke-direct {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    .line 2322
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v10, "phoneId"

    iget v11, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v6, v10, v11}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2327
    iget-object v6, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, -0x1

    if-eqz v6, :cond_15

    if-eq v6, v5, :cond_14

    if-eq v6, v7, :cond_13

    if-eq v6, v13, :cond_12

    if-eq v6, v12, :cond_11

    move v6, v5

    :goto_7
    move v15, v14

    goto :goto_8

    .line 2350
    :cond_11
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v6

    move v15, v4

    goto :goto_8

    :cond_12
    move v6, v12

    move v15, v13

    goto :goto_8

    :cond_13
    move v15, v5

    const/4 v6, 0x6

    goto :goto_8

    :cond_14
    move v15, v7

    move v6, v11

    goto :goto_8

    :cond_15
    move v6, v7

    goto :goto_7

    .line 2357
    :goto_8
    iget-boolean v10, v1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v10, :cond_16

    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isVideoCrsFallback(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v10

    if-eqz v10, :cond_16

    move v6, v7

    goto :goto_9

    :cond_16
    move v14, v15

    .line 2363
    :goto_9
    iget-object v10, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v10, :cond_17

    move v10, v4

    goto :goto_a

    .line 2364
    :cond_17
    invoke-virtual {v10}, Lorg/codeaurora/ims/ImsCallModification;->isLocallyPaused()Z

    move-result v10

    .line 2365
    :goto_a
    iget-object v15, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v15, v8, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2367
    iget-object v8, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v8, :cond_18

    move v8, v4

    goto :goto_b

    .line 2368
    :cond_18
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsCallModification;->getPrevVideoCallType()I

    move-result v8

    :goto_b
    if-eq v8, v5, :cond_1b

    if-eq v8, v7, :cond_1a

    if-eq v8, v13, :cond_19

    goto :goto_c

    :cond_19
    move v7, v12

    goto :goto_c

    :cond_1a
    const/4 v7, 0x6

    goto :goto_c

    :cond_1b
    move v7, v11

    .line 2383
    :goto_c
    iget-object v8, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v8, v9, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2385
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateImsCallProfile locally_paused="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", prev_videocalltype="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2389
    iget-object v7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v8, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v8, v5, v6}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2392
    iget-object v5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v5

    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2393
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v6

    iget-object v7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v7}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    .line 2394
    invoke-virtual {v7}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v7

    iget-object v8, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v8

    iget-object v9, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v9, v9, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 2392
    invoke-static {v6, v7, v8, v14, v9}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2406
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v2

    if-ne v2, v3, :cond_1c

    .line 2408
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    invoke-direct {v0, v2, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    .line 2412
    :cond_1c
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 2414
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallUtils;->updateImsCallProfileVerstatInfo(Lorg/codeaurora/ims/VerstatInfo;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2415
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateImsCallProfile :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2419
    :cond_1d
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toImsCallProfile(Lorg/codeaurora/ims/MultiIdentityLineInfo;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2421
    const-string v3, "incomingTir"

    iget-boolean v4, v1, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2425
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVideoCrsSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2426
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateCrsExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2430
    :cond_1e
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCallProgressNotificationSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2431
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateCallProgressInfoExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2435
    :cond_1f
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateComputedAudioQualityExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2438
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isDataChannelSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2439
    const-string v2, "DC is enabled and update modemCallId"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2440
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "modemCallId"

    .line 2442
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->getModemCallId()I

    move-result v4

    .line 2440
    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2446
    :cond_20
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVosSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2447
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2448
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallDetails;->getVosSupport()Z

    move-result v3

    .line 2447
    const-string v4, "isVosSupported"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2452
    :cond_21
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVisualizedVoiceSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2453
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2454
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallDetails;->isVisualizedVoiceCall()Z

    move-result v3

    .line 2453
    const-string v4, "isVisualizedVoiceCall"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2458
    :cond_22
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVideoCrbtSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2459
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateCrbtExtra(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2463
    :cond_23
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isGlassesFree3DVideoSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2464
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2465
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallDetails;->getThreeDimensionalVideoType()I

    move-result v3

    .line 2464
    const-string v4, "GlassesFree3DVideoType"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2469
    :cond_24
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 2471
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toImsCallProfile(Lorg/codeaurora/ims/CallComposerInfo;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2476
    :cond_25
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 2478
    iget-object v0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toImsCallProfile(Lorg/codeaurora/ims/EcnamInfo;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_26
    return-void
.end method

.method private updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 3

    .line 500
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-eqz v0, :cond_1

    .line 506
    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v0, p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->mayBeUpdateMultipartyState(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 509
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/DriverCallIms;->update(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    move v1, p1

    .line 511
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateLocalDc is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method public static updateMediaProfileAudioDirection(Landroid/telephony/ims/ImsCallProfile;Z)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 1220
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    .line 1225
    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v2

    .line 1226
    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v3

    .line 1227
    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v0

    .line 1222
    invoke-static {v1, p1, v2, v3, v0}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    .line 1228
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-object p1
.end method


# virtual methods
.method public accept(IILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3

    .line 3102
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: rttMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIR presentation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3106
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3107
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p1

    .line 3106
    invoke-virtual {v0, v1, p0, p2, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;III)V

    return-void
.end method

.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    .line 3087
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3089
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: rttMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3090
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->accept(IILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public answerDualVtRequest(Landroid/os/Message;ZI)V
    .locals 0

    .line 4240
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->answerDualVtRequest(Landroid/os/Message;ZI)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1741
    const-string v0, "Close!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1742
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0xb

    .line 1743
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 4

    .line 3145
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3147
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    .line 3148
    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3147
    invoke-virtual {v0, v1, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->deflectCall(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public dualVtRequest(Landroid/os/Message;I)V
    .locals 0

    .line 4236
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->dualVtRequest(Landroid/os/Message;I)V

    return-void
.end method

.method public enableArMode(Ljava/lang/String;)V
    .locals 2

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableArMode for cameraId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->enableArMode(Ljava/lang/String;)V

    .line 1052
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 0

    .line 3377
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    return-void
.end method

.method public getCallAddress()Ljava/lang/String;
    .locals 4

    .line 4301
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4303
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAddress: callProfile is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 4306
    :cond_0
    const-string v2, "oi"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAddress: handle is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCallDomain()I
    .locals 2

    .line 1878
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 1881
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_1

    .line 1882
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    return p0

    :cond_1
    return v1
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 1753
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1754
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallIdInt()I
    .locals 0

    .line 1758
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    return p0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1789
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1790
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->copyImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .line 1907
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1908
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object p0
.end method

.method public getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;
    .locals 1

    .line 3634
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3635
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    return-object p0
.end method

.method public getDcState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1893
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    .line 1894
    iget-object p0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1896
    :cond_0
    const-string v0, "Null mDc! Returning null!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1912
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1913
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 4264
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;
    .locals 1

    .line 452
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 453
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    return-object p0
.end method

.method public bridge synthetic getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    return-object p0
.end method

.method public getImsVideoCallProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 2

    .line 3506
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3508
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_1

    .line 3509
    const-string v0, "getImsVideoCallProvider: Video call provider is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getImsVideoCallProvider2()Lcom/qualcomm/ims/vt/ImsVideoCallProvider;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 430
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    return-object p0
.end method

.method public getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 425
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-object p0
.end method

.method public getInternalCallType()I
    .locals 2

    .line 1866
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    return v1

    .line 1869
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_1

    .line 1870
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    return p0

    .line 1871
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p0, :cond_2

    .line 1872
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1850
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1853
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    .line 1854
    iget-object p0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1855
    :cond_1
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 1856
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1799
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1800
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->copyImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public getMediaId()I
    .locals 2

    .line 1768
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1769
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    return p0

    :cond_1
    return v1
.end method

.method public getPhoneId()I
    .locals 0

    .line 1862
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    return p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1819
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1823
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_1

    .line 1824
    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1826
    :cond_1
    const-string p1, "Call Profile null! "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1809
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1810
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->copyImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 1840
    invoke-super {p0}, Lorg/codeaurora/ims/QImsSessionBase;->getState()I

    move-result p0

    return p0
.end method

.method public getTokenId()I
    .locals 0

    .line 4273
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mToken:I

    return p0
.end method

.method public getVideoCallProvider(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;
    .locals 1

    .line 434
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 436
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-object p0

    .line 438
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    return-object p0
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hoType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "srcTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1375
    :cond_0
    invoke-direct {p0, p6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->parseErrorCode(Ljava/lang/String;)I

    move-result p6

    .line 1376
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result p2

    .line 1377
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result p3

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 p4, 0x4

    if-eq p1, p4, :cond_2

    const/4 p4, 0x5

    if-eq p1, p4, :cond_1

    .line 1415
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unhandled hoType: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1412
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMayHandover(II)V

    return-void

    .line 1407
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 1408
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, p6, v0, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p2, p3, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1396
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "HO Failure for WWAN->IWLAN "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1397
    invoke-static {p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1396
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p4, v1, :cond_4

    .line 1399
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string p4, "handoverInfo"

    invoke-virtual {p1, p4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1402
    :cond_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 1403
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, p6, v0, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p2, p3, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1383
    :cond_5
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance p4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p4, p6, v0, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    const/16 p1, 0x12

    if-ne p2, p1, :cond_6

    const/16 p1, 0xd

    if-ne p3, p1, :cond_6

    .line 1391
    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3

    .line 1350
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    if-eqz v0, :cond_0

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retry Error Notify "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1353
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CsRetryReasonCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1355
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 1356
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "CsRetryReasonCode"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1358
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x7f010000

    .line 1359
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1361
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "LTE HD voice is unavailable. 3G voice call will be connected.SIP Error code: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1363
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .line 1779
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1780
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CallDetails;->hasMediaIdValid()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public hasUserMarkedCallUnwanted()Z
    .locals 1

    .line 3201
    const-string p0, "persist.vendor.radio.debug.mark_unwanted_call"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    .line 3300
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3302
    :cond_0
    const-string p1, "hold requested."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3303
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget p0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {p1, v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->hold(Landroid/os/Message;I)V

    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1

    .line 3423
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 3425
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 3429
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 3426
    :cond_2
    :goto_0
    const-string p1, "inviteParticipants: empty participants"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public isCallActive()Z
    .locals 2

    .line 3135
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3136
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isDualVideoCall()Z
    .locals 2

    .line 4214
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 4216
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result p0

    .line 4214
    const-string v1, "dualVtCallType"

    invoke-virtual {v0, v1, p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x1b

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isImsCallSessionAlive()Z
    .locals 2

    .line 1680
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInCall()Z
    .locals 2

    .line 1934
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1937
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMergeHostSession()Z
    .locals 0

    .line 4074
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    return p0
.end method

.method public isMultiparty()Z
    .locals 2

    .line 1922
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1923
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p0, :cond_3

    const-string v0, "android.telephony.ims.extra.CONFERENCE"

    .line 1925
    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public isMultipartyCall()Z
    .locals 2

    .line 1888
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1889
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    return p0

    :cond_1
    return v1
.end method

.method public isPreparatorySession(Ljava/lang/String;)Z
    .locals 2

    .line 3575
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 3578
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    return p0

    :cond_1
    return v1
.end method

.method public maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2

    .line 924
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 926
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    move-result p0

    return p0
.end method

.method public merge()V
    .locals 3

    .line 3326
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3329
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_1

    .line 3330
    const-string v0, "merge request is already in progress, ignore this merge request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3334
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-nez v0, :cond_3

    .line 3335
    const-string v0, "ConferenceController is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3336
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_2

    .line 3337
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 3344
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMergeHostSession(Z)V

    .line 3347
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3348
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getMergeCallList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3349
    sget-object v2, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3351
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "merge mLocalParticipants "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3356
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsConferenceController;->sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    return-void
.end method

.method public notifyConfInfo([B)V
    .locals 1

    .line 3617
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3619
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateConfXmlBytes([B)V

    .line 3620
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/ConfInfo;->getConfUriList()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 3621
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->restoreUnknownParticipants()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 3622
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz p1, :cond_1

    .line 3623
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyIncomingDtmf(ZLjava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 4100
    const-string p1, "notifyIncomingDtmf: dtmf is null!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4103
    :cond_0
    const-string v0, "IncomingDtmfInfo"

    if-eqz p1, :cond_1

    .line 4104
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "notifyIncomingDtmf: Adding MT dtmf extra with digit = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4107
    :cond_1
    const-string p1, "notifyIncomingDtmf: Removing MT dtmf extra"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4110
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/codeaurora/ims/ImsCallUtils;->removeExtras(Landroid/os/Bundle;Ljava/util/List;)V

    .line 4112
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    return-void
.end method

.method public notifyReceivedRttMessage(Ljava/lang/Object;)V
    .locals 2

    .line 3968
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3969
    const-string p1, "RTT: notifyReceivedRttMessage not allowed."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3973
    :cond_0
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    .line 3976
    const-string p1, "notifyReceivedRttMessage rtt msg null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3980
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_2

    .line 3981
    const-string p1, "notifyReceivedRttMessage ListenerProxy null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3985
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: notifyReceivedRttMessage rttMessage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3986
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttMessageReceived(Ljava/lang/String;)V

    return-void
.end method

.method public notifyRttModifyRequest(Lorg/codeaurora/ims/CallDetails;)V
    .locals 2

    .line 3951
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3953
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_1

    .line 3954
    const-string p1, "RTT: notifyRttModifyRequest ListenerProxy null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3958
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: notifyRttModifyRequest rttMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3960
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 3961
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3963
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public notifyRttModifyResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 3991
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3995
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 3996
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: modify request exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3997
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4002
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_2

    .line 4003
    const-string p1, "notifyRttModifyResponse ListenerProxy null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4007
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: notifyRttModifyResponse status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4008
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttModifyResponseReceived(I)V

    return-void
.end method

.method public notifySrtpEncryptionUpdate(I)V
    .locals 2

    .line 4121
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_0

    .line 4122
    const-string p1, "mCallProfile is null!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4125
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_1

    .line 4126
    const-string p1, "mCallbackHandler is null!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4129
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "srtpEncryptionCategory"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 4130
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result p1

    .line 4131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifySrtpEncryptionUpdate: isCallSessionUpdated - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public notifyTtyModeChange(I)V
    .locals 2

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTY mode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1341
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 1343
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTtyModeReceived(I)V

    return-void

    .line 1345
    :cond_1
    const-string p1, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public notifyVoiceInfoChanged(I)V
    .locals 3

    .line 4175
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4181
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4182
    :goto_0
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setReceivingRttAudio(Z)V

    .line 4184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RTT: notifyVoiceInfoChanged voiceInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4185
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void

    .line 4176
    :cond_2
    :goto_1
    const-string p1, "notifyVoiceInfoChanged Session invalid/not active/mCallbackHandler null Return"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAbortConferenceCompleted(Z)V
    .locals 9

    .line 4051
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAbortConferenceCompleted isSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4052
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    if-eqz p1, :cond_0

    .line 4053
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getCallee()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4054
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getEmergencyCallInfo()Lorg/codeaurora/ims/EmergencyCallInfo;

    move-result-object v2

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4055
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getClir()I

    move-result v3

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4056
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getCallDetails()Lorg/codeaurora/ims/CallDetails;

    move-result-object v4

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4057
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getIsEncrypted()Z

    move-result v5

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4058
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v6

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4059
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getRedialInfo()Lorg/codeaurora/ims/RedialInfo;

    move-result-object v7

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    .line 4060
    invoke-virtual {p1, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4053
    invoke-virtual/range {v0 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V

    .line 4063
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->resetPendingEmergencyCallInfo()V

    :cond_0
    const/4 p1, 0x0

    .line 4065
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    return-void
.end method

.method public onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 1

    .line 4456
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->onCallDataUsageChanged(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    return-void
.end method

.method public onConferenceParticipantStateChanged(Z)V
    .locals 2

    .line 4079
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConferenceParticipantStateChanged isMultiParty : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4081
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_0

    .line 4082
    const-string p1, "onConferenceParticipantStateChanged: merge is in progress"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4086
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 4087
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMultipartyStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public onConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V
    .locals 2

    .line 4025
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConferenceStateChanged ConferenceState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4028
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$ImsConferenceController$ConferenceState:[I

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    .line 4042
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMergeHostSession(Z)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 4035
    sget-object p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4038
    :cond_2
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMergeHostSession(Z)V

    .line 4039
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    return-void

    .line 4030
    :cond_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->muteStateReporting()V

    return-void
.end method

.method public onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_0

    .line 444
    const-string p1, "onReceivedModifyCall: Ignoring session modification request."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 447
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 0

    .line 4459
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_0

    .line 4460
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onRequestCallDataUsage()V

    :cond_0
    return-void
.end method

.method public reject(I)V
    .locals 8

    .line 3117
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reject "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3122
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isLowBatteryVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    if-eqz v0, :cond_1

    .line 3123
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 3124
    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x1f9

    goto :goto_0

    .line 3127
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeOverrideReason(I)I

    move-result p1

    :goto_0
    move v5, p1

    const/16 p1, 0x8f

    .line 3129
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 3130
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    .line 3131
    invoke-virtual {p1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3130
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public removeCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3546
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3547
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 3549
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeCrsCrbtListener error: Duplicate listener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3544
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 8

    .line 3454
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3455
    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 3458
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreParticipant:Z

    if-eqz p1, :cond_2

    .line 3459
    sget-object p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3461
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3462
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 3468
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    .line 3469
    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1f5

    const/4 v6, 0x0

    .line 3468
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1969
    const-string v0, "Calling callSessionMergeStarted"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1970
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1971
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 1970
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeStarted(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    return-void

    .line 1973
    :cond_0
    const-string p1, "Null confCallSession! Not calling callSessionMergeStarted"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    .line 3314
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3316
    :cond_0
    const-string p1, "resume requested."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3317
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget p0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {p1, v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->resume(Landroid/os/Message;I)V

    return-void
.end method

.method public resumePendingCall(I)V
    .locals 3

    .line 2964
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resumePendingCall VideoState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2966
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x1

    .line 2967
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 2966
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2968
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3

    .line 3481
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3482
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendDtmf(ICLandroid/os/Message;)V

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3

    .line 3867
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3868
    const-string p1, "RTT: sendRttMessage not allowed."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3872
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendRttMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4

    .line 3877
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3880
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 3884
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 3885
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RTT: sendRttModifyRequest mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3887
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3888
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3890
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mRttMode is invalid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3893
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Lorg/codeaurora/ims/CallModify;

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-direct {v2, v0, p0}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    invoke-virtual {p1, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 4

    .line 3903
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3905
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 3907
    new-instance v1, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 3908
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v2

    iput v2, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 3909
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v2, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 3911
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RTT: sendRttModifyResponse response = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3912
    iget-object v0, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapResponseToMode(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 3914
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method public sendSipDtmf(Ljava/lang/String;)V
    .locals 2

    .line 3569
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3570
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendSipDtmf(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setAnswerExtras(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 584
    const-string v0, "tirConfig"

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    :cond_0
    return-void
.end method

.method public setArListener(Lorg/codeaurora/ims/internal/IImsArListener;)V
    .locals 1

    .line 1040
    const-string v0, "setArListener"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    .line 1042
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p1, :cond_0

    .line 1043
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getNegotiatedFps()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecorderFrameRate(I)V

    :cond_0
    return-void
.end method

.method public setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V
    .locals 1

    .line 3628
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3630
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    return-void
.end method

.method public setCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3519
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3520
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3522
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCrsCrbtListener error: Duplicate listener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3525
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3533
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda3;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 3517
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDualVtCallExtra(Z)V
    .locals 3

    .line 4194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDualVtCallExtra: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4195
    const-string v0, "dualVtCallType"

    if-eqz p1, :cond_0

    .line 4196
    const-string p1, "setting dual vt call extra"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4197
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4203
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 4204
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result p1

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result p1

    .line 4205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting internal callType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4206
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 4208
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result p1

    .line 4206
    invoke-virtual {v1, v0, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 4210
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    return-void
.end method

.method public setEmergencyServiceCategoryInProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 591
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-nez v0, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p1, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v1, "EmergencyServiceCategory"

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Emergency service category:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 592
    :cond_2
    :goto_0
    const-string p1, "Driver call or call Details is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setImsVideoCallProviderImpl(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;)V
    .locals 0

    .line 4190
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 2

    .line 2995
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setListener: listener = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2996
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2997
    :cond_0
    invoke-super {p0, p1}, Lorg/codeaurora/ims/QImsSessionBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 2998
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setLocalRenderingDelay(I)V
    .locals 2

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLocalRenderingDelay"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_0

    .line 1058
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->setLocalRenderingDelay(I)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .line 1956
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    return-void
.end method

.method public setScreenShareListener(Lorg/codeaurora/ims/internal/IImsScreenShareListener;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 2769
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2771
    :cond_0
    iget-object v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2772
    iget-object v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2773
    iget-object v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    const/4 v2, 0x1

    .line 2775
    iput v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    move-object/from16 v4, p1

    .line 2776
    iput-object v4, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2780
    const-string v3, "oir"

    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v6

    .line 2782
    iget-object v5, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2783
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v7

    .line 2782
    invoke-virtual {v5, v3, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2786
    const-string v5, "persist.dbg.call_encrypt_ovr"

    const/4 v12, 0x0

    invoke-static {v5, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v12

    .line 2793
    :goto_0
    iget-object v7, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 2798
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getProprietaryCallExtras()Landroid/os/Bundle;

    move-result-object v7

    if-nez v5, :cond_2

    if-eqz v7, :cond_2

    .line 2802
    const-string v5, "CallEncryption"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 2803
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v8, v5

    .line 2818
    :goto_1
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getLineInfo(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v5

    .line 2819
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MultiIdentity Line info in Dial Request :: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2829
    new-instance v9, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v10

    invoke-direct {v1, v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v10

    const/4 v11, 0x3

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v13, v5}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    .line 2832
    invoke-direct {v1, v7, v9}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallExtrasIntoCallDetails(Landroid/os/Bundle;Lorg/codeaurora/ims/CallDetails;)V

    .line 2834
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "RTT: start rtt mode = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2835
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v5

    invoke-virtual {v9, v5}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 2836
    const-string v5, "CallPull"

    invoke-virtual {v0, v5, v12}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v9, v5}, Lorg/codeaurora/ims/CallDetails;->setCallPull(Z)V

    .line 2838
    invoke-direct {v1, v9}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierOneDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2840
    iget-object v7, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2841
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v10

    .line 2840
    invoke-virtual {v7, v3, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2842
    iget-object v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "cnap"

    .line 2843
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v10

    .line 2842
    invoke-virtual {v3, v7, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2850
    :cond_3
    iget-object v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "phoneId"

    iget v10, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v3, v7, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2853
    iget-object v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    if-eqz v5, :cond_4

    .line 2854
    iget-boolean v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v3, :cond_4

    .line 2857
    const-string v0, "defer low battery video call dial request"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2861
    :cond_4
    invoke-direct {v1, v9}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v0, 0x70

    .line 2862
    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    return-void

    :cond_5
    const v3, 0x7f010004

    .line 2866
    invoke-direct {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v9, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2867
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2868
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallNumValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v0, 0x96

    .line 2869
    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    return-void

    .line 2873
    :cond_6
    const-string v3, "android.telephony.ims.extra.RETRY_CALL_FAIL_REASON"

    invoke-virtual {v0, v3, v12}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v3

    .line 2876
    const-string v5, "android.telephony.ims.extra.RETRY_CALL_FAIL_NETWORKTYPE"

    invoke-virtual {v0, v5, v12}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v5

    .line 2879
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "start: retryCallFailCause = "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " retryCallFailNetworkType = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2881
    new-instance v7, Lorg/codeaurora/ims/RedialInfo;

    .line 2882
    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallModeFromRadioTech(I)I

    move-result v5

    invoke-direct {v7, v3, v5}, Lorg/codeaurora/ims/RedialInfo;-><init>(II)V

    .line 2885
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v3

    const/4 v5, 0x2

    move v4, v6

    const/4 v6, 0x0

    if-ne v3, v5, :cond_9

    .line 2886
    new-instance v14, Lorg/codeaurora/ims/EmergencyCallInfo;

    .line 2887
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v15

    .line 2888
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v16

    .line 2889
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v17

    .line 2890
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v18

    .line 2891
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->hasKnownUserIntentEmergency()Z

    move-result v19

    invoke-direct/range {v14 .. v19}, Lorg/codeaurora/ims/EmergencyCallInfo;-><init>(ILjava/util/List;IZZ)V

    .line 2893
    iget-object v0, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2894
    iget-object v0, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    if-nez v0, :cond_7

    .line 2895
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    move-object/from16 v2, p1

    move-object v5, v9

    move-object v3, v14

    invoke-direct/range {v0 .. v8}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Z)V

    iput-object v0, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 2904
    :cond_7
    iget-object v0, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-virtual {v0, v12}, Lorg/codeaurora/ims/ImsConferenceController;->sendAbortConferenceRequest(I)V

    return-void

    :cond_8
    move-object v13, v14

    :cond_9
    move-object v5, v9

    .line 2909
    iget-object v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 2910
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object v9, v6

    move-object v10, v7

    move v6, v4

    move-object v7, v5

    move-object v5, v13

    move-object/from16 v4, p1

    .line 2909
    invoke-virtual/range {v3 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V

    .line 2912
    iput-boolean v12, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8

    .line 3045
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3047
    :cond_0
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x1

    .line 3048
    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 3051
    array-length v1, p1

    const/4 v2, 0x0

    const-string v3, ""

    move-object v4, v3

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v5, p1, v2

    add-int/2addr v3, v0

    .line 3053
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 3056
    :cond_1
    array-length v6, p1

    if-ne v3, v6, :cond_2

    .line 3057
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3059
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3062
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 3063
    iput-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 3065
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "startConference mCallee = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3068
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3069
    const-string v1, "isConferenceUri"

    .line 3070
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 3069
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3071
    invoke-static {p1}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p1

    .line 3072
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 3073
    new-instance v5, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result p2

    const/4 v1, 0x3

    invoke-direct {v5, p2, v1, p1}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 3075
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 3076
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3075
    invoke-virtual/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 2

    .line 3493
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3494
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->startDtmf(ICLandroid/os/Message;)V

    return-void
.end method

.method public startScreenShare(II)V
    .locals 2

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startScreenShare: width - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_0

    .line 1028
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->setSharedDisplayParams(II)V

    :cond_0
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 3501
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3502
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->stopDtmf(ILandroid/os/Message;)V

    return-void
.end method

.method public stopScreenShare()V
    .locals 1

    .line 1033
    const-string v0, "stopScreenShare"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->stopScreenShare()V

    :cond_0
    return-void
.end method

.method public terminate(I)V
    .locals 10

    .line 3261
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3262
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isTerminateLowBatteryCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "terminate: fail deferred low battery video call with reason = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3266
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    return-void

    .line 3269
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "terminate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1f9

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 3274
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    goto :goto_0

    .line 3276
    :cond_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeOverrideReason(I)I

    move-result p1

    :goto_0
    move v7, p1

    const/16 p1, 0x1f5

    .line 3278
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 3281
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    if-nez p1, :cond_3

    .line 3282
    const-string p1, "Holding terminate call with invalid ID."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3283
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 3286
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    .line 3289
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 3290
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 3289
    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 0

    .line 3713
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3707
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " callid= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLocalCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRemoteCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 2

    .line 3172
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3173
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3174
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    .line 3175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 3177
    new-instance v1, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lcom/android/ims/internal/IImsCallSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 7

    .line 3159
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3162
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    .line 3163
    invoke-virtual {v0, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/4 v5, 0x0

    move-object v4, p1

    move v3, p2

    .line 3162
    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    .line 3367
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    return-void
.end method

.method public updateCall(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 7

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateCall for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 615
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 616
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 617
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyCallTypeChanging(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 618
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setEmergencyServiceCategoryInProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 620
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->update(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 624
    :cond_1
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "incomingConference"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 629
    :cond_2
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/16 v0, 0x8

    .line 732
    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 734
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 735
    invoke-static {v0, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x70

    goto :goto_0

    .line 737
    :cond_3
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    .line 738
    :goto_0
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-virtual {v2}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->getCode()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    .line 739
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->getCode()I

    move-result v0

    .line 741
    :cond_4
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_5

    .line 743
    iget v5, p1, Lorg/codeaurora/ims/DriverCallIms;->mAdditionalCallFailCause:I

    goto :goto_1

    :cond_5
    move v5, v0

    .line 741
    :goto_1
    const-string v6, "CallFailExtraCode"

    invoke-virtual {v2, v6, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    const/16 v2, 0x95

    if-ne v0, v2, :cond_6

    .line 745
    const-string v0, "Call was ended as LTE to 3G/2G handover was not feasible."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Sip callFailCause:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez v0, :cond_12

    if-eqz p1, :cond_13

    .line 750
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_13

    .line 753
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_8

    :cond_7
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 756
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->IsMultiEndpointCallEndCause(Landroid/telephony/ims/ImsReasonInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 757
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isUserRejectedFailCause(Landroid/telephony/ims/ImsReasonInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 758
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v2, 0x1f5

    if-ne v0, v2, :cond_a

    .line 760
    :cond_9
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 762
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 763
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fe

    invoke-direct {v0, v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 764
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 766
    :cond_a
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v2, 0x141

    if-ne v0, v2, :cond_b

    .line 770
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    const-string v4, "sipAlternateUri"

    invoke-virtual {v0, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 774
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 775
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 772
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 779
    :cond_b
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 780
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 781
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RTP inactivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 782
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Call is dropped as WiFi is lost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 783
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Call is dropped due to Wi-Fi signal is degraded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 784
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CD-11: Wi-Fi signal lost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 785
    :cond_c
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x192

    iput v2, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 789
    :cond_d
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 790
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 791
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CD-021: ISP Problem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 792
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Call is dropped due to Wi-Fi backhaul is congested"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 793
    :cond_e
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x515

    iput v2, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 797
    :cond_f
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v0, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 800
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v0

    if-ne v0, v3, :cond_10

    .line 802
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x79

    iput v2, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 806
    :cond_10
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 808
    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    if-ne v2, v4, :cond_11

    .line 809
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 811
    :cond_11
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 816
    :cond_12
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_13

    .line 817
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 818
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 819
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    :cond_13
    :goto_2
    const/4 v0, 0x0

    .line 822
    :goto_3
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreatePendingEndCallReason(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 823
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    goto/16 :goto_6

    .line 726
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCrsStatus(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 729
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_6

    .line 706
    :pswitch_3
    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 707
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_14

    .line 708
    const-string v0, "MO Alerting call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 711
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doneTerminate()Z

    .line 713
    :cond_14
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v2, :cond_15

    .line 715
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 716
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    invoke-static {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMediaProfileAudioDirection(Landroid/telephony/ims/ImsCallProfile;Z)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 718
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_15

    .line 719
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 722
    :cond_15
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_6

    .line 690
    :pswitch_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_16

    .line 691
    const-string v0, "MO Dialing call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 694
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doneTerminate()Z

    .line 695
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(II)Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 698
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_16

    .line 699
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V

    .line 702
    :cond_16
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_6

    .line 673
    :pswitch_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_19

    .line 674
    const-string v0, "Call being held."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_18

    .line 676
    :cond_17
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 679
    :cond_18
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 680
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v0, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 682
    invoke-virtual {p0, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->dualVtRequest(Landroid/os/Message;I)V

    .line 686
    :cond_19
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionHold()V

    goto/16 :goto_6

    .line 631
    :pswitch_6
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v2, 0x4

    if-nez v0, :cond_1a

    .line 633
    const-string v0, "Phantom call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 635
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 636
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_1e

    .line 638
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doneTerminate()Z

    .line 639
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_5

    .line 641
    :cond_1a
    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_1d

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_1d

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_1d

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v3, :cond_1b

    goto :goto_4

    .line 654
    :cond_1b
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_1c

    .line 655
    const-string v0, "Call being resumed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_1e

    .line 658
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_5

    .line 661
    :cond_1c
    const-string v0, "Call resumed skipped"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateDualVideoExtraToAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 665
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setDualVtCallExtra(Z)V

    goto :goto_5

    .line 645
    :cond_1d
    :goto_4
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 646
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 648
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 649
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_1e

    .line 650
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 669
    :cond_1e
    :goto_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionActive()V

    .line 827
    :goto_6
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_1f

    const/4 v1, 0x1

    .line 830
    :cond_1f
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 831
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateAudioQuality()Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_20

    .line 834
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    :cond_20
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 2

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateConfSession for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1237
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    iget-boolean p1, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 1238
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1239
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget p1, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDualVtSupport(ZI)V
    .locals 2

    .line 4246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDualVtSupport: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4247
    iput p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDualVideoCapability:I

    if-eqz p1, :cond_0

    .line 4248
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mToken:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 4249
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 4250
    invoke-static {}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getToken()I

    move-result p1

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mToken:I

    .line 4251
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v0, "token"

    invoke-virtual {p2, v0, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 4252
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string p2, "dualVtCapability"

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDualVideoCapability:I

    invoke-virtual {p1, p2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 4254
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    :cond_0
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 2

    .line 3640
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateFeatureCapabilities video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " voice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3641
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3643
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eq v0, p2, :cond_2

    .line 3644
    :cond_1
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 3645
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 3646
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq p2, v0, :cond_2

    .line 3647
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 3648
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 3649
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz p1, :cond_2

    .line 3650
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 3651
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    .line 3650
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .line 1102
    const-string v0, "updateLowBatteryStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    :cond_0
    return-void
.end method

.method public updateOrientationMode(I)V
    .locals 2

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateOrientationMode: orientation mode - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "OrientationMode"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 932
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p1

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p1, v0, :cond_0

    .line 933
    const-string p1, "updateOrientationMode: mDc is null and in dialing state "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 936
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result p1

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateOrientationMode: isCallSessionUpdated - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateRecorderFrameRate(I)V
    .locals 3

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " updateRecorderFrameRate : rate - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 985
    :cond_0
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Lorg/codeaurora/ims/internal/IImsArListener;->onRecorderFrameRateChanged(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 987
    :catchall_0
    const-string p1, " onRecorderFrameRateChanged exception!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 980
    :cond_1
    :goto_0
    const-string p1, "updateRecorderFrameRate: is not valid call or updateRecorderFrameRate is NULL"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateRecordingDisabled()V
    .locals 3

    .line 1007
    const-string v0, " updateRecordingDisabled "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/internal/IImsArListener;->onRecordingDisabled(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1017
    :catchall_0
    const-string v0, " updateRecordingDisabled exception!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1010
    :cond_1
    :goto_0
    const-string v0, "updateRecordingDisabled: is not valid call or mArListener is NULL"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateRecordingEnabled()V
    .locals 3

    .line 992
    const-string v0, " updateRecordingEnabled "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/internal/IImsArListener;->onRecordingEnabled(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1002
    :catchall_0
    const-string v0, " updateRecordingEnabled exception!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 995
    :cond_1
    :goto_0
    const-string v0, "updateRecordingEnabled: is not valid call or mArListener is NULL"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateRecordingSurface(Landroid/view/Surface;II)V
    .locals 8

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateRecordingSurface: recording surface - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " width - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_4

    .line 944
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    if-nez v1, :cond_0

    goto :goto_2

    .line 950
    :cond_0
    const-string v1, "onRecordingSurfaceChanged exception!"

    if-eqz v0, :cond_1

    .line 952
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-interface {v0, v2, p1, p2, p3}, Lorg/codeaurora/ims/internal/IImsScreenShareListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 955
    :catchall_0
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    if-eqz v0, :cond_3

    .line 960
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    .line 961
    invoke-static {v0, v2, p2, p3}, Lcom/qualcomm/ims/vt/CameraUtil;->calculateArPreviewSize(Landroid/content/Context;Ljava/lang/String;II)Landroid/util/Size;

    move-result-object p2

    if-nez p2, :cond_2

    .line 963
    const-string p1, "calculatedSize is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 967
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    .line 968
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 969
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    move-object v4, p1

    .line 967
    invoke-interface/range {v2 .. v7}, Lorg/codeaurora/ims/internal/IImsArListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 971
    :catchall_1
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    .line 945
    :cond_4
    :goto_2
    const-string p1, "updateRecordingSurface: is not valid call or mScreenSharelistener is NULL"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V
    .locals 6

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1267
    :cond_0
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    if-nez v0, :cond_1

    .line 1268
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void

    .line 1269
    :cond_1
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1271
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMtSuppSvcCode(I)V

    .line 1273
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    const/4 v2, 0x2

    const/4 v3, 0x7

    if-eq v0, v2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    .line 1319
    const-string p2, "Non-Hold/Resume supp svc code received."

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void

    .line 1300
    :cond_2
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result p1

    if-nez p1, :cond_3

    .line 1302
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1303
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p2

    .line 1304
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result p2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1305
    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1306
    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v2

    .line 1303
    invoke-static {p2, v0, v1, v2}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p2

    .line 1302
    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1308
    :cond_3
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1310
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1311
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 1313
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 1277
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1278
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p2

    .line 1279
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result p2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1280
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1281
    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v2

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1282
    invoke-virtual {v4}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v4

    const/4 v5, 0x0

    .line 1278
    invoke-static {p2, v5, v0, v2, v4}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p2

    .line 1277
    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1284
    :cond_5
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1286
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1287
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result p1

    if-eq p1, v3, :cond_6

    .line 1293
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance p2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1325
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public updateVideoCallDataUsageInfo(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 2

    .line 1063
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f010005

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dataUsage"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1068
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result p1

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateVideoCallDataUsageInfo: isCallSessionUpdated - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 2

    .line 3857
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    if-eq p1, v0, :cond_0

    .line 3858
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    const/4 v0, 0x1

    .line 3859
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    return-void

    .line 3861
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateVoWiFiCallQuality Unchanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
