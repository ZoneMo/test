.class public final Lcom/tencent/mm/pluginsdk/ui/simley/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public VERSION:I

.field public fsC:Ljava/util/List;

.field public fsD:Ljava/util/ArrayList;

.field public fsE:J

.field public fsF:[I

.field public fsG:I

.field public fsH:I

.field public fsI:I

.field public fsJ:Z

.field public fsK:Z

.field private final fsL:Lcom/tencent/mm/sdk/e/al;

.field private final fsM:Lcom/tencent/mm/sdk/e/al;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    .line 37
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xb3

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsH:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->VERSION:I

    .line 63
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/simley/c;-><init>(Lcom/tencent/mm/pluginsdk/ui/simley/b;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsL:Lcom/tencent/mm/sdk/e/al;

    .line 82
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/d;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/simley/d;-><init>(Lcom/tencent/mm/pluginsdk/ui/simley/b;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsM:Lcom/tencent/mm/sdk/e/al;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/simley/b;)Lcom/tencent/mm/sdk/e/al;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsM:Lcom/tencent/mm/sdk/e/al;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/simley/b;)Lcom/tencent/mm/sdk/e/al;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsL:Lcom/tencent/mm/sdk/e/al;

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsC:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsF:[I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsG:I

    .line 51
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsD:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->fsD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    :cond_0
    return-void
.end method
