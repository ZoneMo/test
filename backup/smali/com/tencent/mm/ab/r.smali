.class public Lcom/tencent/mm/ab/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# static fields
.field private static bZd:Ljava/util/HashMap;


# instance fields
.field private cwa:Lcom/tencent/mm/ab/l;

.field private cwb:Lcom/tencent/mm/ab/b;

.field private cwc:Lcom/tencent/mm/ab/m;

.field private cwd:Lcom/tencent/mm/ab/n;

.field private cwe:Lcom/tencent/mm/ab/o;

.field private cwf:Lcom/tencent/mm/ab/p;

.field private cwg:Lcom/tencent/mm/sdk/platformtools/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    sput-object v0, Lcom/tencent/mm/ab/r;->bZd:Ljava/util/HashMap;

    const-string v1, "PACKAGE_INFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ab/s;

    invoke-direct {v2}, Lcom/tencent/mm/ab/s;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/tencent/mm/ab/r;->bZd:Ljava/util/HashMap;

    const-string v1, "CHATTINGBGINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ab/t;

    invoke-direct {v2}, Lcom/tencent/mm/ab/t;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/tencent/mm/ab/m;

    invoke-direct {v0}, Lcom/tencent/mm/ab/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ab/r;->cwc:Lcom/tencent/mm/ab/m;

    .line 22
    new-instance v0, Lcom/tencent/mm/ab/n;

    invoke-direct {v0}, Lcom/tencent/mm/ab/n;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ab/r;->cwd:Lcom/tencent/mm/ab/n;

    .line 23
    new-instance v0, Lcom/tencent/mm/ab/o;

    invoke-direct {v0}, Lcom/tencent/mm/ab/o;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ab/r;->cwe:Lcom/tencent/mm/ab/o;

    .line 24
    new-instance v0, Lcom/tencent/mm/ab/p;

    invoke-direct {v0}, Lcom/tencent/mm/ab/p;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ab/r;->cwf:Lcom/tencent/mm/ab/p;

    .line 104
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ab/u;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ab/u;-><init>(Lcom/tencent/mm/ab/r;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ab/r;->cwg:Lcom/tencent/mm/sdk/platformtools/ay;

    return-void
.end method

.method private static BL()Lcom/tencent/mm/ab/r;
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/ab/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ab/r;

    .line 28
    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tencent/mm/ab/r;

    invoke-direct {v0}, Lcom/tencent/mm/ab/r;-><init>()V

    .line 30
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ab/r;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 32
    :cond_0
    return-object v0
.end method

.method public static BM()Lcom/tencent/mm/ab/l;
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 39
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ab/r;->BL()Lcom/tencent/mm/ab/r;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ab/r;->cwa:Lcom/tencent/mm/ab/l;

    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Lcom/tencent/mm/ab/r;->BL()Lcom/tencent/mm/ab/r;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ab/l;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sO()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/ab/l;-><init>(Lcom/tencent/mm/ap/i;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/mm/ab/r;->cwa:Lcom/tencent/mm/ab/l;

    .line 42
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ab/r;->BL()Lcom/tencent/mm/ab/r;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ab/r;->cwa:Lcom/tencent/mm/ab/l;

    return-object v0
.end method

.method public static BN()Lcom/tencent/mm/ab/b;
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 49
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ab/r;->BL()Lcom/tencent/mm/ab/r;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ab/r;->cwb:Lcom/tencent/mm/ab/b;

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Lcom/tencent/mm/ab/r;->BL()Lcom/tencent/mm/ab/r;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ab/b;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/ab/b;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v1, v0, Lcom/tencent/mm/ab/r;->cwb:Lcom/tencent/mm/ab/b;

    .line 52
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ab/r;->BL()Lcom/tencent/mm/ab/r;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ab/r;->cwb:Lcom/tencent/mm/ab/b;

    return-object v0
.end method


# virtual methods
.method public final N(Z)V
    .locals 3
    .parameter

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string v0, "MicroMsg.SubCorePacakge"

    const-string v1, "dkregcode Update RegonCode here !"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/tencent/mm/ab/r;->cwg:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 69
    :cond_0
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "PostSyncTask"

    iget-object v2, p0, Lcom/tencent/mm/ab/r;->cwc:Lcom/tencent/mm/ab/m;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 70
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "PostSyncTask"

    iget-object v2, p0, Lcom/tencent/mm/ab/r;->cwd:Lcom/tencent/mm/ab/n;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 71
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "PostSyncTask"

    iget-object v2, p0, Lcom/tencent/mm/ab/r;->cwe:Lcom/tencent/mm/ab/o;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 72
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "PostSyncTask"

    iget-object v2, p0, Lcom/tencent/mm/ab/r;->cwf:Lcom/tencent/mm/ab/p;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 73
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 100
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    return-void
.end method

.method public final qy()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "PostSyncTask"

    iget-object v2, p0, Lcom/tencent/mm/ab/r;->cwc:Lcom/tencent/mm/ab/m;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 58
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "PostSyncTask"

    iget-object v2, p0, Lcom/tencent/mm/ab/r;->cwd:Lcom/tencent/mm/ab/n;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 59
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "PostSyncTask"

    iget-object v2, p0, Lcom/tencent/mm/ab/r;->cwe:Lcom/tencent/mm/ab/o;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 60
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "PostSyncTask"

    iget-object v2, p0, Lcom/tencent/mm/ab/r;->cwf:Lcom/tencent/mm/ab/p;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 61
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/tencent/mm/ab/r;->bZd:Ljava/util/HashMap;

    return-object v0
.end method
