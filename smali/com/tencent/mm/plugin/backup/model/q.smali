.class public final Lcom/tencent/mm/plugin/backup/model/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cKv:Ljava/lang/String;

.field private static cKw:Lcom/tencent/mm/plugin/backup/a/b;

.field private static final cKx:Ljava/lang/String;

.field private static cKy:Lcom/tencent/mm/plugin/backup/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bakchatUpload.result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKv:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bakchatDownload.result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKx:Ljava/lang/String;

    return-void
.end method

.method public static GK()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GM()Lcom/tencent/mm/plugin/backup/a/b;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    if-nez v0, :cond_0

    .line 56
    const-string v0, "MicroMsg.BakReportMgr"

    const-string v1, "yy recordeUploadPause with a un-started Result."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iget v1, v1, Lcom/tencent/mm/plugin/backup/a/b;->cIU:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIU:I

    .line 61
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy uploadPause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/q;->a(Lcom/tencent/mm/am/a;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static GL()V
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GM()Lcom/tencent/mm/plugin/backup/a/b;

    move-result-object v0

    .line 68
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "MicroMsg.BakReportMgr"

    const-string v1, "yy recordUploadError with a un-started Result."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iget v1, v1, Lcom/tencent/mm/plugin/backup/a/b;->cIQ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIQ:I

    .line 75
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy uploadError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/q;->a(Lcom/tencent/mm/am/a;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static GM()Lcom/tencent/mm/plugin/backup/a/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 104
    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    if-eqz v1, :cond_1

    .line 105
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKv:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/plugin/backup/model/q;->in(Ljava/lang/String;)[B

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    new-instance v2, Lcom/tencent/mm/plugin/backup/a/b;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/backup/a/b;-><init>()V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/plugin/backup/a/b;->C([B)Lcom/tencent/mm/plugin/backup/a/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static GN()V
    .locals 3

    .prologue
    .line 159
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GP()Lcom/tencent/mm/plugin/backup/a/a;

    move-result-object v0

    .line 160
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    if-nez v0, :cond_0

    .line 162
    const-string v0, "MicroMsg.BakReportMgr"

    const-string v1, "yy recordDownloadEnd with a un-started Result."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iget v1, v1, Lcom/tencent/mm/plugin/backup/a/a;->cIU:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIU:I

    .line 167
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy downloadPause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKx:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/q;->a(Lcom/tencent/mm/am/a;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static GO()V
    .locals 3

    .prologue
    .line 173
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GP()Lcom/tencent/mm/plugin/backup/a/a;

    move-result-object v0

    .line 174
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    if-nez v0, :cond_0

    .line 176
    const-string v0, "MicroMsg.BakReportMgr"

    const-string v1, "yy recordDownloadError with a un-started Result."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iget v1, v1, Lcom/tencent/mm/plugin/backup/a/a;->cIQ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIQ:I

    .line 181
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy downloadError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKx:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/q;->a(Lcom/tencent/mm/am/a;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static GP()Lcom/tencent/mm/plugin/backup/a/a;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 223
    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    if-eqz v1, :cond_1

    .line 224
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKv:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/plugin/backup/model/q;->in(Ljava/lang/String;)[B

    move-result-object v1

    .line 227
    if-eqz v1, :cond_0

    .line 229
    :try_start_0
    new-instance v2, Lcom/tencent/mm/plugin/backup/a/a;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/backup/a/a;-><init>()V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/plugin/backup/a/a;->B([B)Lcom/tencent/mm/plugin/backup/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static P(J)V
    .locals 3
    .parameter

    .prologue
    .line 187
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GP()Lcom/tencent/mm/plugin/backup/a/a;

    move-result-object v0

    .line 188
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    if-nez v0, :cond_0

    .line 190
    const-string v0, "MicroMsg.BakReportMgr"

    const-string v1, "yy recordDownloadEndTime with a un-started Result."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput-wide p0, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIN:J

    .line 195
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy downloadEndTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKx:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/q;->a(Lcom/tencent/mm/am/a;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static a(IIJIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GP()Lcom/tencent/mm/plugin/backup/a/a;

    move-result-object v0

    .line 137
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy recordUploadStart with a un-reported Result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKv:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    .line 143
    :cond_0
    new-instance v0, Lcom/tencent/mm/plugin/backup/a/a;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/backup/a/a;-><init>()V

    .line 144
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput p0, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIK:I

    .line 145
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput p1, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIL:I

    .line 146
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput-wide p2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIM:J

    .line 147
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput p4, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIP:I

    .line 148
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput p5, v0, Lcom/tencent/mm/plugin/backup/a/a;->networkType:I

    .line 149
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput p6, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIT:I

    .line 150
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput v3, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIU:I

    .line 151
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput v3, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIQ:I

    .line 153
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy downloadStart: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKx:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/q;->a(Lcom/tencent/mm/am/a;Ljava/lang/String;)Z

    .line 156
    return-void
.end method

.method public static a(IJI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GM()Lcom/tencent/mm/plugin/backup/a/b;

    move-result-object v0

    .line 82
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    if-nez v0, :cond_0

    .line 84
    const-string v0, "MicroMsg.BakReportMgr"

    const-string v1, "yy recordUploadEnd with a un-started Result."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iput p0, v0, Lcom/tencent/mm/plugin/backup/a/b;->cub:I

    .line 88
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iput-wide p1, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIW:J

    .line 89
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iput p3, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIR:I

    .line 91
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy uploadEnd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/b;->cub:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIW:J

    iget-wide v4, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIV:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/b;->networkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIQ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIU:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.BakReportMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "yy upload report result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x2863

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 98
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKv:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    goto/16 :goto_0
.end method

.method public static a(IJIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GM()Lcom/tencent/mm/plugin/backup/a/b;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy recordUploadStart with a un-reported Result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKv:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    .line 38
    :cond_0
    new-instance v0, Lcom/tencent/mm/plugin/backup/a/b;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/backup/a/b;-><init>()V

    .line 39
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iput p0, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIX:I

    .line 40
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iput-wide p1, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIV:J

    .line 41
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iput p3, v0, Lcom/tencent/mm/plugin/backup/a/b;->networkType:I

    .line 42
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iput p4, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIY:I

    .line 43
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iput p5, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIT:I

    .line 44
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iput v3, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIU:I

    .line 45
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    iput v3, v0, Lcom/tencent/mm/plugin/backup/a/b;->cIQ:I

    .line 47
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy uploadStart: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKw:Lcom/tencent/mm/plugin/backup/a/b;

    sget-object v1, Lcom/tencent/mm/plugin/backup/model/q;->cKv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/q;->a(Lcom/tencent/mm/am/a;Ljava/lang/String;)Z

    .line 50
    return-void
.end method

.method public static a(JII)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x3e8

    .line 201
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/q;->GP()Lcom/tencent/mm/plugin/backup/a/a;

    move-result-object v0

    .line 202
    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    if-nez v0, :cond_0

    .line 204
    const-string v0, "MicroMsg.BakReportMgr"

    const-string v1, "yy recordDownloadEnd with a un-started Result."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 207
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput-wide p0, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIO:J

    .line 208
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput p2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIR:I

    .line 209
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    iput p3, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIS:I

    .line 211
    const-string v0, "MicroMsg.BakReportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yy downloadEnd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIO:J

    iget-wide v4, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIM:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIN:J

    iget-wide v4, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIM:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/a;->networkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIQ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/tencent/mm/plugin/backup/a/a;->cIU:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.BakReportMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "yy download report result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x2851

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 217
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKx:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 218
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/plugin/backup/model/q;->cKy:Lcom/tencent/mm/plugin/backup/a/a;

    goto/16 :goto_0
.end method

.method private static a(Lcom/tencent/mm/am/a;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 252
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/am/a;->toByteArray()[B

    move-result-object v1

    .line 257
    array-length v2, v1

    invoke-static {p1, v1, v2}, Lcom/tencent/mm/a/c;->a(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static in(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 266
    invoke-static {p0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gs()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 274
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/a/c;->h(Ljava/lang/String;II)[B

    move-result-object v0

    goto :goto_0
.end method
