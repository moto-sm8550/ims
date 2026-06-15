.class public Lorg/codeaurora/ims/ImsUtImpl;
.super Landroid/telephony/ims/stub/ImsUtImplBase;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;,
        Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;
    }
.end annotation


# static fields
.field private static final CF_DISABLED:I = 0x0

.field private static final CF_ENABLED:I = 0x1

.field static final CF_REASON_ALL:I = 0x4

.field static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field static final CF_REASON_BUSY:I = 0x1

.field static final CF_REASON_NOT_LOGGED_IN:I = 0x6

.field static final CF_REASON_NOT_REACHABLE:I = 0x3

.field static final CF_REASON_NO_REPLY:I = 0x2

.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final EVENT_QUERY_CB:I = 0xd

.field private static final EVENT_QUERY_CF:I = 0x1

.field private static final EVENT_QUERY_CLIP:I = 0x7

.field private static final EVENT_QUERY_CLIR:I = 0x5

.field private static final EVENT_QUERY_COLP:I = 0xb

.field private static final EVENT_QUERY_COLR:I = 0x9

.field private static final EVENT_QUERY_CW:I = 0x3

.field private static final EVENT_UNSOL_ON_SS:I = 0xf

.field private static final EVENT_UPDATE_CB:I = 0xe

.field private static final EVENT_UPDATE_CF:I = 0x2

.field private static final EVENT_UPDATE_CLIP:I = 0x8

.field private static final EVENT_UPDATE_CLIR:I = 0x6

.field private static final EVENT_UPDATE_COLP:I = 0xc

.field private static final EVENT_UPDATE_COLR:I = 0xa

.field private static final EVENT_UPDATE_CW:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtImpl"

.field private static final MAX_REQUESTS_PENDING:I = 0x32

.field static final SERVICE_CLASS_DATA:I = 0x2

.field static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field static final SERVICE_CLASS_FAX:I = 0x4

.field static final SERVICE_CLASS_MAX:I = 0x80

.field static final SERVICE_CLASS_NONE:I = 0x0

.field static final SERVICE_CLASS_PACKET:I = 0x40

.field static final SERVICE_CLASS_PAD:I = 0x80

.field static final SERVICE_CLASS_SMS:I = 0x8

.field static final SERVICE_CLASS_VOICE:I = 0x1

.field static final UT_ERROR_FDN_FAILURE:Ljava/lang/String; = "E_FDN_CHECK_FAILURE"

.field static final UT_ERROR_GENERIC:Ljava/lang/String; = "E_GENERIC_FAILURE"

.field static final UT_ERROR_NETWORK_UNSUPPORTED:Ljava/lang/String; = "E_NETWORK_NOT_SUPPORTED"

.field static final UT_ERROR_SS_MODIFIED_TO_DIAL:Ljava/lang/String; = "E_SS_MODIFIED_TO_DIAL"

.field static final UT_ERROR_SS_MODIFIED_TO_DIAL_VIDEO:Ljava/lang/String; = "E_SS_MODIFIED_TO_DIAL_VIDEO"

.field static final UT_ERROR_SS_MODIFIED_TO_SS:Ljava/lang/String; = "E_SS_MODIFIED_TO_SS"

.field static final UT_ERROR_SS_MODIFIED_TO_USSD:Ljava/lang/String; = "E_SS_MODIFIED_TO_USSD"

.field static final UT_PASSWORD_INCORRECT:Ljava/lang/String; = "E_PASSWORD_INCORRECT"

.field private static requestId:I = -0x1


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDisposed:Z

.field private final mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

.field private final mLock:Ljava/lang/Object;

.field private mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdumpw(Lorg/codeaurora/ims/ImsUtImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDisposed(Lorg/codeaurora/ims/ImsUtImpl;)Z
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 106
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 107
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 108
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 113
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerImpl;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    .line 114
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    .line 125
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 126
    iput-object p2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 127
    iput-object p3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const/16 p0, 0xf

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p2, v0, p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private dumpw(Ljava/lang/String;)V
    .locals 2

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": isDisposed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": mCi= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mListenerImpl= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 134
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getFacilityFromCbType(I)I
    .locals 2

    const/4 p0, 0x2

    const/4 v0, 0x3

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x4

    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    const/4 v1, 0x6

    if-ne p1, p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x7

    if-ne p1, v0, :cond_4

    return p0

    :cond_4
    const/16 v0, 0x8

    if-ne p1, p0, :cond_5

    return v0

    :cond_5
    const/16 p0, 0x9

    if-ne p1, v0, :cond_6

    return p0

    :cond_6
    const/16 v0, 0xa

    if-ne p1, p0, :cond_7

    return v0

    :cond_7
    if-ne p1, v0, :cond_8

    const/16 p0, 0xb

    return p0

    :cond_8
    if-ne p1, v1, :cond_9

    const/16 p0, 0xc

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public static getIcbAction(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    return v0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private getIdForRequest()I
    .locals 2

    .line 721
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 722
    :try_start_0
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 724
    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 726
    :cond_0
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 727
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 5

    const/4 v0, 0x0

    .line 744
    const-string v1, "ImsUtImpl"

    if-nez p0, :cond_0

    .line 745
    const-string p0, "getImsReasonInfoFromResponseError :: Null AsyncResult!"

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 748
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 749
    const-string p0, "getImsReasonInfoFromResponseError :: No exception in AsyncResult!"

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 757
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    throw v3
    :try_end_0
    .catch Lorg/codeaurora/ims/ImsRilException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    :catchall_0
    const-string p0, "ar.exception is not an ImsRilException."

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v2, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object p0

    .line 765
    :catch_0
    iget-object p0, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p0, Lorg/codeaurora/ims/ImsRilException;

    .line 766
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 768
    const-string p0, "getImsReasonInfoFromResponseError :: Null message string in exception!"

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v2, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object p0

    .line 773
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsUtImpl;->toImsReasonInfoCode(I)I

    move-result p0

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getImsReasonInfoFromResponseError :: ImsReasonInfo code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, p0, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v1
.end method

.method private isDisposed()Z
    .locals 0

    .line 154
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    return p0
.end method

.method private static toImsReasonInfoCode(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x31

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 804
    const-string p0, "ImsUtImpl"

    const-string v0, "getImsReasonInfoFromResponseError :: Unrecognized exception message string!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_0
    const/16 p0, 0x339

    return p0

    :pswitch_1
    const/16 p0, 0x338

    return p0

    :pswitch_2
    const/16 p0, 0x337

    return p0

    :pswitch_3
    const/16 p0, 0x336

    return p0

    :pswitch_4
    const/16 p0, 0xf1

    return p0

    :cond_0
    const/16 p0, 0x352

    return p0

    :cond_1
    const/16 p0, 0x322

    return p0

    :cond_2
    const/16 p0, 0x335

    return p0

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    .line 164
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 166
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;->onClosed(Lorg/codeaurora/ims/ImsUtImpl;)V

    .line 170
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    :cond_1
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 142
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .locals 5

    .line 327
    const-string v0, "queryCallForward"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 336
    const-string p1, "Invalid request id for queryCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    if-ne p1, v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x5

    if-ne p1, v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x6

    if-ne p1, v4, :cond_8

    .line 366
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 369
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 366
    invoke-virtual {p1, v4, p3, p2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    return v0

    .line 363
    :cond_8
    const-string p1, "Invalid condition for queryCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 329
    :cond_9
    :goto_1
    const-string p1, "queryCFForServiceClass"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public queryCallBarring(I)I
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(II)I

    move-result p0

    return p0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 11

    .line 187
    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 190
    const-string p1, "Invalid request id for queryCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 195
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 197
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    .line 195
    invoke-virtual/range {v5 .. v10}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(IIZLjava/lang/String;Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public queryCallBarringForServiceClass(IIZLjava/lang/String;Landroid/os/Message;)Z
    .locals 10

    .line 206
    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v4

    const/4 p1, -0x1

    if-ne v4, p1, :cond_1

    .line 214
    const-string p1, "Unsupported call barring facility code in queryCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 p1, 0xb

    if-ne v4, p1, :cond_2

    .line 218
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x3

    move v9, p3

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    goto :goto_0

    :cond_2
    move v9, p3

    move-object v6, p4

    move-object v8, p5

    .line 225
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x3

    const/4 v5, 0x0

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 208
    :cond_3
    :goto_1
    const-string p1, "queryCallBarringForServiceClass"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 320
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public queryCallWaiting()I
    .locals 5

    .line 378
    const-string v0, "queryCallWaiting"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v1, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 386
    const-string v0, "Invalid request id for queryCallWaiting."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 389
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 390
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 389
    invoke-virtual {v1, v4, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallWaiting(ILandroid/os/Message;)V

    return v0

    .line 380
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v2
.end method

.method public queryClip()I
    .locals 5

    .line 418
    const-string v0, "queryCLIP"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 425
    const-string v0, "Invalid request id for queryCLIP."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 428
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCLIP(Landroid/os/Message;)V

    return v0

    .line 420
    :cond_2
    :goto_0
    const-string v0, "queryClip"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public queryClir()I
    .locals 5

    .line 399
    const-string v0, "queryCLIR"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 406
    const-string v0, "Invalid request id for queryCLIR."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 409
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->getCLIR(Landroid/os/Message;)V

    return v0

    .line 401
    :cond_2
    :goto_0
    const-string v0, "queryClir"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public queryColp()I
    .locals 5

    .line 456
    const-string v0, "queryCOLP"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 463
    const-string v0, "Invalid request id for queryCLIP."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 466
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 467
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 466
    const-string v2, "COLP"

    invoke-virtual {v1, v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V

    return v0

    .line 458
    :cond_2
    :goto_0
    const-string v0, "queryColp"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public queryColr()I
    .locals 5

    .line 437
    const-string v0, "queryCOLR"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 444
    const-string v0, "Invalid request id for queryCOLR."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 447
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->getCOLR(Landroid/os/Message;)V

    return v0

    .line 439
    :cond_2
    :goto_0
    const-string v0, "queryColr"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public setIdForRequest(I)V
    .locals 0

    .line 732
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 733
    :try_start_0
    sput p1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 734
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 3

    .line 705
    const-string v0, "setListener"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const-string p1, "setListener - isDisposed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 711
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    return-void
.end method

.method setOnClosedListener(Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    return-void
.end method

.method public toImsCallForwardInfo([Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 271
    array-length v2, v1

    new-array v2, v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 276
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_9

    .line 277
    aget-object v6, v1, v4

    .line 279
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    move v12, v9

    goto :goto_1

    .line 281
    :cond_0
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-nez v7, :cond_8

    move v12, v3

    .line 288
    :goto_1
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-nez v7, :cond_1

    move v11, v3

    move/from16 v16, v5

    goto :goto_3

    .line 290
    :cond_1
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-ne v7, v9, :cond_2

    :goto_2
    move/from16 v16, v5

    move v11, v9

    goto :goto_3

    .line 292
    :cond_2
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    .line 295
    iget v5, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->timeSeconds:I

    goto :goto_2

    .line 296
    :cond_3
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_4

    goto :goto_2

    .line 298
    :cond_4
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v9, 0x4

    if-ne v7, v9, :cond_5

    goto :goto_2

    .line 300
    :cond_5
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v9, 0x5

    if-ne v7, v9, :cond_6

    goto :goto_2

    .line 302
    :cond_6
    iget v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v9, 0x6

    if-ne v7, v9, :cond_7

    goto :goto_2

    .line 308
    :goto_3
    new-instance v10, Landroid/telephony/ims/ImsCallForwardInfo;

    iget v13, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->toa:I

    iget v14, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    new-instance v15, Ljava/lang/String;

    iget-object v5, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v10 .. v16}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    aput-object v10, v2, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v16

    goto :goto_0

    .line 305
    :cond_7
    const-string v1, "Bad reason in Query CF response."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8

    .line 284
    :cond_8
    const-string v1, "Bad status in Query CF response."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8

    :cond_9
    return-object v2
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsUtImpl;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 6

    .line 503
    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsUtImpl;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 9

    .line 512
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallBarring"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 519
    const-string p1, "Invalid request id for updateCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 524
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 526
    const-string p1, "Unsupported call barring facility code in updateCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 530
    :cond_2
    invoke-static {p2}, Lorg/codeaurora/ims/ImsUtImpl;->getIcbAction(I)I

    move-result v3

    const/16 p1, 0xb

    const/4 p2, 0x0

    const/16 v1, 0xe

    if-ne v4, p1, :cond_3

    .line 533
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 538
    invoke-virtual {p1, v1, v0, p2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const/4 v7, 0x1

    move-object v5, p3

    move-object v6, p5

    .line 533
    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return v0

    :cond_3
    move-object v6, p5

    .line 540
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 542
    invoke-virtual {p1, v1, v0, p2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const/4 v5, 0x0

    move v7, p4

    .line 540
    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return v0

    .line 514
    :cond_4
    :goto_0
    const-string p1, "updateCallBarringWithPassword"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 9

    .line 554
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallForward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 561
    const-string p1, "Invalid request id for updateCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 565
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 570
    invoke-virtual {v1, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move v3, p1

    move v4, p2

    move-object v6, p3

    move v5, p4

    move v7, p5

    .line 565
    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    return v0

    .line 556
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 12

    .line 579
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 585
    const-string p1, "Invalid request id for updateCallForwardUncondTimer."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 589
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 593
    invoke-virtual {v1, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    const/4 v9, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    .line 589
    invoke-virtual/range {v2 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    return v0

    .line 580
    :cond_2
    :goto_0
    const-string p1, "updateCallForwardUncondTimer"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateCallWaiting(ZI)I
    .locals 5

    .line 602
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallWaiting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 609
    const-string p1, "Invalid request id for updateCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 612
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 614
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 612
    invoke-virtual {v1, p1, p2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallWaiting(ZILandroid/os/Message;)V

    return v0

    .line 604
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateClip(Z)I
    .locals 5

    .line 643
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCLIP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 650
    const-string p1, "Invalid request id for updateCLIP."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 653
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 655
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 653
    const-string v2, "CLIP"

    invoke-virtual {v1, v2, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    return v0

    .line 645
    :cond_2
    :goto_0
    const-string p1, "updateClip"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateClir(I)I
    .locals 5

    .line 623
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCLIR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 630
    const-string p1, "Invalid request id for updateCLIR."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 633
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 634
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 633
    invoke-virtual {v1, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setCLIR(ILandroid/os/Message;)V

    return v0

    .line 625
    :cond_2
    :goto_0
    const-string p1, "updateClir"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateColp(Z)I
    .locals 5

    .line 684
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCOLP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 691
    const-string p1, "Invalid request id for updateCOLP."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 694
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 696
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 694
    const-string v2, "COLP"

    invoke-virtual {v1, v2, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    return v0

    .line 686
    :cond_2
    :goto_0
    const-string p1, "updateColp"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method

.method public updateColr(I)I
    .locals 5

    .line 664
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCOLR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    if-gez v0, :cond_1

    .line 671
    const-string p1, "Invalid request id for updateCOLR."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 674
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 675
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 674
    invoke-virtual {v1, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->setCOLR(ILandroid/os/Message;)V

    return v0

    .line 666
    :cond_2
    :goto_0
    const-string p1, "updateColr"

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return v1
.end method
