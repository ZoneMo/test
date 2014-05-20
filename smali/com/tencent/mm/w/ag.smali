.class public Lcom/tencent/mm/w/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# static fields
.field private static bZd:Ljava/util/HashMap;


# instance fields
.field private cuh:Lcom/tencent/mm/w/g;

.field private cui:Lcom/tencent/mm/w/o;

.field private cuj:Lcom/tencent/mm/w/a;

.field private cuk:Lcom/tencent/mm/w/t;

.field private cul:Lcom/tencent/mm/w/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    sput-object v0, Lcom/tencent/mm/w/ag;->bZd:Ljava/util/HashMap;

    const-string v1, "IMGINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/w/ah;

    invoke-direct {v2}, Lcom/tencent/mm/w/ah;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/tencent/mm/w/t;

    invoke-direct {v0}, Lcom/tencent/mm/w/t;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/w/ag;->cuk:Lcom/tencent/mm/w/t;

    .line 20
    new-instance v0, Lcom/tencent/mm/w/m;

    invoke-direct {v0}, Lcom/tencent/mm/w/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/w/ag;->cul:Lcom/tencent/mm/w/m;

    return-void
.end method

.method private static AX()Lcom/tencent/mm/w/ag;
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/w/ag;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/w/ag;

    .line 24
    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/tencent/mm/w/ag;

    invoke-direct {v0}, Lcom/tencent/mm/w/ag;-><init>()V

    .line 26
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/w/ag;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 28
    :cond_0
    return-object v0
.end method

.method public static AY()Lcom/tencent/mm/w/o;
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/w/ag;->cui:Lcom/tencent/mm/w/o;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/w/o;

    invoke-direct {v1}, Lcom/tencent/mm/w/o;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/w/ag;->cui:Lcom/tencent/mm/w/o;

    .line 35
    :cond_0
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/w/ag;->cui:Lcom/tencent/mm/w/o;

    return-object v0
.end method

.method public static AZ()Lcom/tencent/mm/w/a;
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/w/ag;->cuj:Lcom/tencent/mm/w/a;

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/w/a;

    invoke-direct {v1}, Lcom/tencent/mm/w/a;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/w/ag;->cuj:Lcom/tencent/mm/w/a;

    .line 45
    :cond_1
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/w/ag;->cuj:Lcom/tencent/mm/w/a;

    return-object v0
.end method

.method public static Ba()Lcom/tencent/mm/w/g;
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 52
    :cond_0
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/w/ag;->cuh:Lcom/tencent/mm/w/g;

    if-nez v0, :cond_1

    .line 53
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/w/g;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/w/g;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v1, v0, Lcom/tencent/mm/w/ag;->cuh:Lcom/tencent/mm/w/g;

    .line 55
    :cond_1
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/w/ag;->cuh:Lcom/tencent/mm/w/g;

    return-object v0
.end method

.method private static Bb()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/w/ag;->cuh:Lcom/tencent/mm/w/g;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/tencent/mm/w/g;->AO()V

    .line 85
    :cond_0
    return-void
.end method

.method public static clearCache()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lcom/tencent/mm/w/ag;->Bb()V

    .line 61
    return-void
.end method


# virtual methods
.method public final N(Z)V
    .locals 2
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/w/ag;->cul:Lcom/tencent/mm/w/m;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 110
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/w/ag;->cul:Lcom/tencent/mm/w/m;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 112
    const-string v0, "local_cdn_img_cache"

    iget-object v1, p0, Lcom/tencent/mm/w/ag;->cuk:Lcom/tencent/mm/w/t;

    invoke-static {v0, v1}, Lcom/tencent/mm/cache/b;->a(Ljava/lang/String;Lcom/tencent/mm/cache/a;)V

    .line 113
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 105
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    return-void
.end method

.method public final qy()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/w/ag;->cui:Lcom/tencent/mm/w/o;

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/w/ag;->cui:Lcom/tencent/mm/w/o;

    invoke-virtual {v0}, Lcom/tencent/mm/w/o;->stop()V

    .line 69
    :cond_0
    invoke-static {}, Lcom/tencent/mm/w/ag;->AX()Lcom/tencent/mm/w/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/w/ag;->cuj:Lcom/tencent/mm/w/a;

    .line 70
    invoke-static {}, Lcom/tencent/mm/w/ag;->Bb()V

    .line 74
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/w/ag;->cul:Lcom/tencent/mm/w/m;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 75
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/w/ag;->cul:Lcom/tencent/mm/w/m;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 77
    const-string v0, "local_cdn_img_cache"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/cache/b;->a(Ljava/lang/String;Lcom/tencent/mm/cache/a;)V

    .line 78
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/tencent/mm/w/ag;->bZd:Ljava/util/HashMap;

    return-object v0
.end method
