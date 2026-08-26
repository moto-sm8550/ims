.class public Lvendor/qti/hardware/radio/ims/CallInfo;
.super Ljava/lang/Object;
.source "CallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/CallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

.field public als:I

.field public audioQuality:Lvendor/qti/hardware/radio/ims/AudioQuality;

.field public callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

.field public callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

.field public callReason:Ljava/lang/String;

.field public crsData:Lvendor/qti/hardware/radio/ims/CrsData;

.field public diversionInfo:Ljava/lang/String;

.field public failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

.field public historyInfo:Ljava/lang/String;

.field public index:I

.field public isCalledPartyRinging:Z

.field public isEmergency:Z

.field public isEncrypted:Z

.field public isMT:Z

.field public isMpty:Z

.field public isPreparatory:Z

.field public isVideoConfSupported:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public modemCallId:I

.field public mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:I

.field public tirMode:I

.field public toa:I

.field public verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallInfo$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallInfo$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/CallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    .line 14
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    .line 15
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMpty:Z

    .line 16
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMT:Z

    .line 18
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    .line 19
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoice:Z

    .line 20
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoicePrivacy:Z

    .line 22
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->numberPresentation:I

    .line 24
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->namePresentation:I

    .line 27
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEncrypted:Z

    .line 28
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isCalledPartyRinging:Z

    .line 30
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVideoConfSupported:Z

    .line 32
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->tirMode:I

    .line 33
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isPreparatory:Z

    .line 39
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->modemCallId:I

    .line 40
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEmergency:Z

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 183
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 184
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 171
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 172
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 173
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 174
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 175
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 176
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 177
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 178
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->audioQuality:Lvendor/qti/hardware/radio/ims/AudioQuality;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    .line 100
    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_3d

    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    :goto_0
    add-int/2addr v0, v1

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 163
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    goto :goto_0

    .line 163
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    goto :goto_0

    .line 163
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMpty:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    goto :goto_0

    .line 163
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMT:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    goto :goto_0

    .line 163
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_b
    :try_start_6
    sget-object v2, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    goto/16 :goto_0

    .line 163
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    goto/16 :goto_0

    .line 163
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoice:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    goto/16 :goto_0

    .line 163
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoicePrivacy:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    goto/16 :goto_0

    .line 163
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->number:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    goto/16 :goto_0

    .line 163
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->numberPresentation:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16

    goto/16 :goto_0

    .line 163
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->name:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18

    goto/16 :goto_0

    .line 163
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->namePresentation:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    goto/16 :goto_0

    .line 163
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_1b
    :try_start_e
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CallDetails;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c

    goto/16 :goto_0

    .line 163
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_1d
    :try_start_f
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1f

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e

    goto/16 :goto_0

    .line 163
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEncrypted:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_21

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    goto/16 :goto_0

    .line 163
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_21
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isCalledPartyRinging:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_23

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_22

    goto/16 :goto_0

    .line 163
    :cond_22
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_23
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->historyInfo:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_24

    goto/16 :goto_0

    .line 163
    :cond_24
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_25
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVideoConfSupported:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_27

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_26

    goto/16 :goto_0

    .line 163
    :cond_26
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_27
    :try_start_14
    sget-object v2, Lvendor/qti/hardware/radio/ims/VerstatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/VerstatInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_29

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_28

    goto/16 :goto_0

    .line 163
    :cond_28
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_29
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->tirMode:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2a

    goto/16 :goto_0

    .line 163
    :cond_2a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_2b
    :try_start_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isPreparatory:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2d

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2c

    goto/16 :goto_0

    .line 163
    :cond_2c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_2d
    :try_start_17
    sget-object v2, Lvendor/qti/hardware/radio/ims/CrsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CrsData;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2f

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2e

    goto/16 :goto_0

    .line 163
    :cond_2e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    :cond_2f
    :try_start_18
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_31

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_30

    goto/16 :goto_0

    .line 163
    :cond_30
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_31
    :try_start_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->diversionInfo:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_33

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_32

    goto/16 :goto_0

    .line 163
    :cond_32
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_33
    :try_start_1a
    sget-object v2, Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_35

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_34

    goto/16 :goto_0

    .line 163
    :cond_34
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_35
    :try_start_1b
    sget-object v2, Lvendor/qti/hardware/radio/ims/AudioQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/AudioQuality;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->audioQuality:Lvendor/qti/hardware/radio/ims/AudioQuality;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_37

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto/16 :goto_0

    .line 163
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_37
    :try_start_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->modemCallId:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_39

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_38

    goto/16 :goto_0

    .line 163
    :cond_38
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_39
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEmergency:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    goto/16 :goto_0

    .line 163
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_3b
    :try_start_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callReason:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    goto/16 :goto_0

    .line 163
    :cond_3c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 100
    :cond_3d
    :try_start_1f
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :goto_1
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_3e

    .line 163
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    add-int/2addr v0, v1

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 166
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMpty:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 64
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMT:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 65
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 66
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoice:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 68
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoicePrivacy:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 69
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->numberPresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->namePresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 75
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEncrypted:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 76
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isCalledPartyRinging:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 77
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVideoConfSupported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 79
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 80
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->tirMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isPreparatory:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 82
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 83
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 84
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->diversionInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 86
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->audioQuality:Lvendor/qti/hardware/radio/ims/AudioQuality;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 87
    iget p2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->modemCallId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-boolean p2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEmergency:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 89
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
