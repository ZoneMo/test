.class public final Lcom/tencent/mm/plugin/backup/model/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cJN:Lcom/tencent/mm/plugin/backup/model/d;

.field private static cJX:I


# instance fields
.field private cJO:Lcom/tencent/mm/plugin/backup/model/l;

.field private cJP:Lcom/tencent/mm/plugin/backup/model/ar;

.field private cJQ:Lcom/tencent/mm/plugin/backup/model/aa;

.field private cJR:Lcom/tencent/mm/plugin/backup/model/x;

.field private cJS:Lcom/tencent/mm/plugin/backup/model/am;

.field private cJT:Lcom/tencent/mm/plugin/backup/model/ax;

.field private cJU:Landroid/os/Handler;

.field private cJV:[B

.field private cJW:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/plugin/backup/model/d;->cJX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/model/d;->cJU:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/model/d;->Gh()V

    .line 68
    return-void
.end method

.method public static F([B)V
    .locals 2
    .parameter

    .prologue
    .line 321
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJV:[B

    .line 322
    if-nez p0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmbakinfo.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/backup/model/af;->iB(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmbakinfo.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p0

    invoke-static {v0, p0, v1}, Lcom/tencent/mm/a/c;->a(Ljava/lang/String;[BI)I

    goto :goto_0
.end method

.method public static Gg()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJU:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    invoke-direct {v0}, Lcom/tencent/mm/plugin/backup/model/d;->Gh()V

    .line 81
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJU:Landroid/os/Handler;

    return-object v0
.end method

.method private Gh()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/tencent/mm/plugin/backup/model/e;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/backup/model/e;-><init>(Lcom/tencent/mm/plugin/backup/model/d;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    return-void
.end method

.method private static Gi()Lcom/tencent/mm/plugin/backup/model/d;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/tencent/mm/plugin/backup/model/d;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/backup/model/d;-><init>()V

    sput-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    .line 113
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    return-object v0
.end method

.method public static Gj()Lcom/tencent/mm/plugin/backup/model/ax;
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJT:Lcom/tencent/mm/plugin/backup/model/ax;

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/ax;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/backup/model/ax;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJT:Lcom/tencent/mm/plugin/backup/model/ax;

    .line 120
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJT:Lcom/tencent/mm/plugin/backup/model/ax;

    return-object v0
.end method

.method public static Gk()Lcom/tencent/mm/plugin/backup/model/l;
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJO:Lcom/tencent/mm/plugin/backup/model/l;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/l;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/backup/model/l;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJO:Lcom/tencent/mm/plugin/backup/model/l;

    .line 127
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJO:Lcom/tencent/mm/plugin/backup/model/l;

    return-object v0
.end method

.method public static Gl()Lcom/tencent/mm/plugin/backup/model/ar;
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJP:Lcom/tencent/mm/plugin/backup/model/ar;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/ar;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/backup/model/ar;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJP:Lcom/tencent/mm/plugin/backup/model/ar;

    .line 134
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJP:Lcom/tencent/mm/plugin/backup/model/ar;

    return-object v0
.end method

.method public static Gm()Lcom/tencent/mm/plugin/backup/model/aa;
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJQ:Lcom/tencent/mm/plugin/backup/model/aa;

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/aa;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/backup/model/aa;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJQ:Lcom/tencent/mm/plugin/backup/model/aa;

    .line 141
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJQ:Lcom/tencent/mm/plugin/backup/model/aa;

    return-object v0
.end method

.method public static Gn()Lcom/tencent/mm/plugin/backup/model/am;
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJS:Lcom/tencent/mm/plugin/backup/model/am;

    if-nez v0, :cond_0

    .line 167
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/am;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/backup/model/am;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJS:Lcom/tencent/mm/plugin/backup/model/am;

    .line 169
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJS:Lcom/tencent/mm/plugin/backup/model/am;

    return-object v0
.end method

.method public static Go()Z
    .locals 5

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "MicroMsg.BackupCore"

    const-string v1, "openTempDB failed: tempDB file not exits"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/a/c;->a(Ljava/io/File;)Z

    .line 185
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    .line 187
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sX()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sW()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sd()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/backup/model/ax;->f(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sd()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sV()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/backup/model/ax;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static Gp()V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/tencent/mm/c/a/i;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/i;-><init>()V

    .line 241
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 242
    return-void
.end method

.method public static Gq()V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ini.tem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ini.tem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    .line 295
    return-void
.end method

.method public static Gr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "backup/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Gs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "backupReport/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Gt()[B
    .locals 4

    .prologue
    .line 331
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJV:[B

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mmbakinfo.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/a/c;->h(Ljava/lang/String;II)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJV:[B

    .line 334
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJV:[B

    return-object v0
.end method

.method static synthetic Gu()I
    .locals 2

    .prologue
    .line 22
    sget v0, Lcom/tencent/mm/plugin/backup/model/d;->cJX:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/tencent/mm/plugin/backup/model/d;->cJX:I

    return v0
.end method

.method static synthetic Gv()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sh()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sU()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sV()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mm/model/be;->ux()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gq()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gp()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/backup/model/d;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/model/d;->cJU:Landroid/os/Handler;

    return-object p1
.end method

.method public static a(Lcom/tencent/mm/plugin/backup/model/j;)V
    .locals 2
    .parameter

    .prologue
    .line 195
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 196
    :cond_0
    sget v0, Lcom/tencent/mm/plugin/backup/model/d;->cJX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/plugin/backup/model/d;->cJX:I

    .line 199
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/f;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/backup/model/f;-><init>(Lcom/tencent/mm/plugin/backup/model/j;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/an;->a(Lcom/tencent/mm/sdk/platformtools/ar;)I

    .line 215
    return-void
.end method

.method public static a(Ljava/lang/Runnable;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/tencent/mm/plugin/backup/model/l;->g(ZZ)V

    .line 246
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gl()Lcom/tencent/mm/plugin/backup/model/ar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/tencent/mm/plugin/backup/model/ar;->g(ZZ)V

    .line 247
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gm()Lcom/tencent/mm/plugin/backup/model/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/aa;->cancel()V

    .line 248
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gk()Lcom/tencent/mm/plugin/backup/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/l;->Gy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gl()Lcom/tencent/mm/plugin/backup/model/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ar;->Gy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gm()Lcom/tencent/mm/plugin/backup/model/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/aa;->Gy()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/tencent/mm/plugin/backup/model/d;->cJX:I

    if-nez v0, :cond_2

    .line 249
    :cond_0
    if-gez p1, :cond_1

    .line 250
    const-string v0, "MicroMsg.BackupCore"

    const-string v1, "closeTempDB no left tryCount!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_1
    const-string v0, "MicroMsg.BackupCore"

    const-string v1, "closeDB before"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ax;->sh()V

    .line 254
    const-string v0, "MicroMsg.BackupCore"

    const-string v1, "closeDB after"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 265
    :goto_0
    return-void

    .line 257
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/g;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/plugin/backup/model/g;-><init>(Ljava/lang/Runnable;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 268
    new-instance v0, Lcom/tencent/mm/plugin/backup/model/h;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/backup/model/h;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/d;->a(Ljava/lang/Runnable;I)V

    .line 288
    return-void
.end method

.method public static eV(I)Lcom/tencent/mm/plugin/backup/model/y;
    .locals 4
    .parameter

    .prologue
    .line 145
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    iget-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/plugin/backup/model/ah;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/backup/model/ah;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/plugin/backup/model/ae;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/backup/model/ae;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/plugin/backup/model/ag;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/backup/model/ag;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/plugin/backup/model/ak;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/backup/model/ak;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/aj;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/backup/model/aj;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/ai;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/backup/model/ai;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v3, 0x2a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJW:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/backup/model/y;

    return-object v0
.end method

.method public static il(Ljava/lang/String;)Lcom/tencent/mm/plugin/backup/a/f;
    .locals 2
    .parameter

    .prologue
    .line 152
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJR:Lcom/tencent/mm/plugin/backup/model/x;

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/x;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/backup/model/x;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJR:Lcom/tencent/mm/plugin/backup/model/x;

    .line 155
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJR:Lcom/tencent/mm/plugin/backup/model/x;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/backup/model/x;->il(Ljava/lang/String;)Lcom/tencent/mm/plugin/backup/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static im(Ljava/lang/String;)Lcom/tencent/mm/plugin/backup/a/f;
    .locals 2
    .parameter

    .prologue
    .line 159
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJR:Lcom/tencent/mm/plugin/backup/model/x;

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/backup/model/x;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/backup/model/x;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJR:Lcom/tencent/mm/plugin/backup/model/x;

    .line 162
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gi()Lcom/tencent/mm/plugin/backup/model/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJR:Lcom/tencent/mm/plugin/backup/model/x;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/backup/model/x;->iy(Ljava/lang/String;)Lcom/tencent/mm/plugin/backup/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJO:Lcom/tencent/mm/plugin/backup/model/l;

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJO:Lcom/tencent/mm/plugin/backup/model/l;

    invoke-virtual {v0, v1, v1}, Lcom/tencent/mm/plugin/backup/model/l;->g(ZZ)V

    .line 341
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJP:Lcom/tencent/mm/plugin/backup/model/ar;

    if-eqz v0, :cond_1

    .line 342
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJP:Lcom/tencent/mm/plugin/backup/model/ar;

    invoke-virtual {v0, v1, v1}, Lcom/tencent/mm/plugin/backup/model/ar;->g(ZZ)V

    .line 344
    :cond_1
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJQ:Lcom/tencent/mm/plugin/backup/model/aa;

    if-eqz v0, :cond_2

    .line 345
    sget-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/model/d;->cJQ:Lcom/tencent/mm/plugin/backup/model/aa;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/aa;->cancel()V

    .line 347
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/plugin/backup/model/d;->cJN:Lcom/tencent/mm/plugin/backup/model/d;

    .line 348
    return-void
.end method

.method public static uA()Lcom/tencent/mm/n/ac;
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    return-object v0
.end method

.method static synthetic yE()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 22
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sh()V

    const-string v2, "MicroMsg.BackupCore"

    const-string v3, "initTempDBimp after close db"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sV()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Lcom/tencent/mm/plugin/backup/model/r;->eX(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MicroMsg.BackupCore"

    const-string v4, "data free error, len %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sU()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sU()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sV()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sV()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, "MicroMsg.BackupCore"

    const-string v2, "initTempDBimp before resetAccUin"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->ux()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ax;->sh()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sX()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sW()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sd()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/mm/plugin/backup/model/ax;->f(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gj()Lcom/tencent/mm/plugin/backup/model/ax;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sd()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sV()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/mm/plugin/backup/model/ax;->b(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gp()V

    move v0, v1

    goto/16 :goto_0
.end method
