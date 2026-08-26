.class public final Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# instance fields
.field public callDomain:I

.field public callSubstate:I

.field public callType:I

.field public causeCode:I

.field public extras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public extrasLength:I

.field public isVosSupported:Z

.field public localAbility:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mediaId:I

.field public peerAbility:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field public rttMode:I

.field public sipAlternateUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    .line 7
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extrasLength:I

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    .line 11
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    .line 14
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    .line 15
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 16
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->isVosSupported:Z

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 125
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x68

    int-to-long v5, v3

    .line 130
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 129
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 135
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;-><init>()V

    mul-int/lit8 v5, v1, 0x68

    int-to-long v5, v5

    .line 136
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 137
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;",
            ">;)V"
        }
    .end annotation

    .line 216
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 218
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 219
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 220
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 221
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x68

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 223
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    mul-int/lit8 v5, v4, 0x68

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 225
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 228
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    if-eq v2, v3, :cond_2

    return v1

    .line 29
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    .line 30
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    if-eq v2, v3, :cond_3

    return v1

    .line 33
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    if-eq v2, v3, :cond_4

    return v1

    .line 36
    :cond_4
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extrasLength:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extrasLength:I

    if-eq v2, v3, :cond_5

    return v1

    .line 39
    :cond_5
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 42
    :cond_6
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 45
    :cond_7
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 48
    :cond_8
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    if-eq v2, v3, :cond_9

    return v1

    .line 51
    :cond_9
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    if-eq v2, v3, :cond_a

    return v1

    .line 54
    :cond_a
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    if-eq v2, v3, :cond_b

    return v1

    .line 57
    :cond_b
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    if-eq v2, v3, :cond_c

    return v1

    .line 60
    :cond_c
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 63
    :cond_d
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->isVosSupported:Z

    iget-boolean p1, p1, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->isVosSupported:Z

    if-eq p0, p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 13

    .line 71
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extrasLength:I

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    .line 75
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    .line 76
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    .line 77
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 82
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->isVosSupported:Z

    .line 83
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    .line 71
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 14

    move-object/from16 v0, p2

    .line 146
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    const-wide/16 v1, 0x4

    add-long v1, p3, v1

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    const-wide/16 v1, 0x8

    add-long v1, p3, v1

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extrasLength:I

    const-wide/16 v1, 0x10

    add-long v8, p3, v1

    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    mul-int/lit8 v2, v1, 0x10

    int-to-long v4, v2

    .line 152
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v3, p1

    .line 151
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 155
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v1, :cond_0

    .line 157
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    mul-int/lit8 v3, v12, 0x10

    int-to-long v4, v3

    .line 158
    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v13

    .line 161
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    .line 162
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    int-to-long v8, v3

    const/4 v10, 0x0

    move-object v3, p1

    .line 160
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 165
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x20

    add-long v8, p3, v1

    const-wide/16 v1, 0x28

    add-long v1, p3, v1

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    mul-int/lit8 v2, v1, 0x40

    int-to-long v4, v2

    .line 171
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v3, p1

    .line 170
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 174
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v11

    :goto_1
    if-ge v4, v1, :cond_1

    .line 176
    new-instance v5, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    invoke-direct {v5}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;-><init>()V

    mul-int/lit8 v6, v4, 0x40

    int-to-long v6, v6

    .line 177
    invoke-virtual {v5, p1, v2, v6, v7}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 178
    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x30

    add-long v8, p3, v1

    const-wide/16 v1, 0x38

    add-long v1, p3, v1

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    mul-int/lit8 v2, v1, 0x40

    int-to-long v4, v2

    .line 184
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v3, p1

    .line 183
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 187
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_2
    if-ge v11, v1, :cond_2

    .line 189
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;-><init>()V

    mul-int/lit8 v5, v11, 0x40

    int-to-long v5, v5

    .line 190
    invoke-virtual {v4, p1, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 191
    iget-object v5, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x40

    add-long v1, p3, v1

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    const-wide/16 v1, 0x44

    add-long v1, p3, v1

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    const-wide/16 v1, 0x48

    add-long v1, p3, v1

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    const-wide/16 v1, 0x4c

    add-long v1, p3, v1

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    const-wide/16 v1, 0x50

    add-long v8, p3, v1

    .line 198
    invoke-virtual {v0, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 201
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    .line 202
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x0

    move-object v3, p1

    .line 200
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v1, 0x60

    add-long v1, p3, v1

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->isVosSupported:Z

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x68

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 120
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.callType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", .callDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallDomain;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", .extrasLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extrasLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", .localAbility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", .peerAbility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", .callSubstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", .mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .causeCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", .rttMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/RttMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", .sipAlternateUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .isVosSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->isVosSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 9

    .line 233
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 234
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 235
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extrasLength:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 237
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    const-wide/16 v3, 0x18

    add-long/2addr v3, p2

    .line 238
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x1c

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 239
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 240
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    move v4, v5

    :goto_0
    if-ge v4, v0, :cond_0

    mul-int/lit8 v6, v4, 0x10

    int-to-long v6, v6

    .line 242
    iget-object v8, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 247
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    const-wide/16 v3, 0x28

    add-long/2addr v3, p2

    .line 248
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x2c

    add-long/2addr v3, p2

    .line 249
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 250
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x40

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    move v4, v5

    :goto_1
    if-ge v4, v0, :cond_1

    .line 252
    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    mul-int/lit8 v7, v4, 0x40

    int-to-long v7, v7

    invoke-virtual {v6, v3, v7, v8}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 254
    :cond_1
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 257
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x30

    add-long/2addr v1, p2

    const-wide/16 v3, 0x38

    add-long/2addr v3, p2

    .line 258
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x3c

    add-long/2addr v3, p2

    .line 259
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 260
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x40

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_2
    if-ge v5, v0, :cond_2

    .line 262
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    mul-int/lit8 v6, v5, 0x40

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 264
    :cond_2
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    .line 266
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x44

    add-long/2addr v0, p2

    .line 267
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    .line 268
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    .line 269
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    .line 270
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x60

    add-long/2addr p2, v0

    .line 271
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->isVosSupported:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 209
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 210
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
