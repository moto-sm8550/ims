.class public final Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
.super Ljava/lang/Object;
.source "HangupRequestInfo.java"


# instance fields
.field public conf_id:I

.field public connIndex:I

.field public connUri:Ljava/lang/String;

.field public failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

.field public hasFailCauseResponse:Z

.field public hasMultiParty:Z

.field public multiParty:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connIndex:I

    .line 6
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasMultiParty:Z

    .line 7
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->multiParty:Z

    .line 8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 9
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->conf_id:I

    .line 10
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 11
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

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
            "Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 90
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x68

    int-to-long v5, v3

    .line 95
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 94
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 100
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;-><init>()V

    mul-int/lit8 v5, v1, 0x68

    int-to-long v5, v5

    .line 101
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 102
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
            "Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;",
            ">;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 137
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 138
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 139
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x68

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 141
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    mul-int/lit8 v5, v4, 0x68

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 143
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 146
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

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 24
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    .line 25
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connIndex:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connIndex:I

    if-eq v2, v3, :cond_3

    return v1

    .line 28
    :cond_3
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasMultiParty:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasMultiParty:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 31
    :cond_4
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->multiParty:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->multiParty:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 34
    :cond_5
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connUri:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connUri:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 37
    :cond_6
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->conf_id:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->conf_id:I

    if-eq v2, v3, :cond_7

    return v1

    .line 40
    :cond_7
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasFailCauseResponse:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasFailCauseResponse:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 43
    :cond_8
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 8

    .line 51
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connIndex:I

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasMultiParty:Z

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->multiParty:Z

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->conf_id:I

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    .line 58
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 51
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 111
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connIndex:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 112
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasMultiParty:Z

    const-wide/16 v0, 0x5

    add-long/2addr v0, p3

    .line 113
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->multiParty:Z

    const-wide/16 v0, 0x8

    add-long v7, p3, v0

    .line 114
    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    .line 118
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x0

    move-object v2, p1

    .line 116
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 121
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->conf_id:I

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    .line 122
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 123
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    const-wide/16 v0, 0x20

    add-long/2addr p3, v0

    invoke-virtual {p0, v2, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x68

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 85
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.connIndex = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .hasMultiParty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasMultiParty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .multiParty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->multiParty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .connUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .conf_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->conf_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", .hasFailCauseResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasFailCauseResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .failCauseResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 151
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connIndex:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 152
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasMultiParty:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x5

    add-long/2addr v0, p2

    .line 153
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->multiParty:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 154
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->connUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 155
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->conf_id:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 156
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->hasFailCauseResponse:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 157
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    const-wide/16 v0, 0x20

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 127
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 128
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
