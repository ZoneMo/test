.class public Lcom/tencent/mm/ag/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# static fields
.field private static bZd:Ljava/util/HashMap;


# instance fields
.field private cAg:Lcom/tencent/mm/platformtools/o;

.field private cAh:Lcom/tencent/mm/ag/d;

.field private chB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    sput-object v0, Lcom/tencent/mm/ag/a;->bZd:Ljava/util/HashMap;

    const-string v1, "WEBVIEW_CACHE_INFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ag/b;

    invoke-direct {v2}, Lcom/tencent/mm/ag/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dj()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/ag/a;->Dk()Lcom/tencent/mm/ag/a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/ag/a;->chB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tools/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static Dk()Lcom/tencent/mm/ag/a;
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/ag/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ag/a;

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/tencent/mm/ag/a;

    invoke-direct {v0}, Lcom/tencent/mm/ag/a;-><init>()V

    .line 61
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ag/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 63
    :cond_0
    return-object v0
.end method

.method public static Dl()Lcom/tencent/mm/ag/d;
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 70
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ag/a;->Dk()Lcom/tencent/mm/ag/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ag/a;->cAh:Lcom/tencent/mm/ag/d;

    if-nez v0, :cond_1

    .line 71
    invoke-static {}, Lcom/tencent/mm/ag/a;->Dk()Lcom/tencent/mm/ag/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ag/d;

    invoke-static {}, Lcom/tencent/mm/ag/a;->Dk()Lcom/tencent/mm/ag/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ag/a;->cAg:Lcom/tencent/mm/platformtools/o;

    invoke-direct {v1, v2}, Lcom/tencent/mm/ag/d;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v1, v0, Lcom/tencent/mm/ag/a;->cAh:Lcom/tencent/mm/ag/d;

    .line 73
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ag/a;->Dk()Lcom/tencent/mm/ag/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ag/a;->cAh:Lcom/tencent/mm/ag/d;

    return-object v0
.end method


# virtual methods
.method public final N(Z)V
    .locals 0
    .parameter

    .prologue
    .line 107
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 103
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-static {}, Lcom/tencent/mm/ag/a;->Dk()Lcom/tencent/mm/ag/a;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/ag/a;->chB:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/ag/a;->chB:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CommonOneMicroMsg.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MicroMsg.SubCoreTools"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setAccPath accPath = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cachePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/tencent/mm/ag/a;->chB:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/ag/a;->Dj()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sget-object v3, Lcom/tencent/mm/ag/a;->bZd:Ljava/util/HashMap;

    invoke-static {v2, v1, v3}, Lcom/tencent/mm/platformtools/n;->a(ILjava/lang/String;Ljava/util/HashMap;)Lcom/tencent/mm/platformtools/o;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ag/a;->cAg:Lcom/tencent/mm/platformtools/o;

    new-instance v1, Lcom/tencent/mm/ag/d;

    iget-object v2, v0, Lcom/tencent/mm/ag/a;->cAg:Lcom/tencent/mm/platformtools/o;

    invoke-direct {v1, v2}, Lcom/tencent/mm/ag/d;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v1, v0, Lcom/tencent/mm/ag/a;->cAh:Lcom/tencent/mm/ag/d;

    .line 112
    :cond_3
    return-void
.end method

.method public final qy()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/mm/ag/a;->cAg:Lcom/tencent/mm/platformtools/o;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ag/a;->cAg:Lcom/tencent/mm/platformtools/o;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/platformtools/o;->eN(I)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ag/a;->cAg:Lcom/tencent/mm/platformtools/o;

    .line 82
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ag/a;->chB:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/tencent/mm/ag/a;->bZd:Ljava/util/HashMap;

    return-object v0
.end method
