.class public final Lcom/tencent/mm/ai/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bOV:Ljava/lang/String;

.field cAt:Lcom/tencent/mm/ai/c;

.field cAu:Ljava/lang/String;

.field cAv:Ljava/lang/String;

.field final cAw:Landroid/os/AsyncTask;

.field context:Landroid/content/Context;

.field duration:I

.field intent:Landroid/content/Intent;

.field rD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/tencent/mm/ai/a;->context:Landroid/content/Context;

    .line 38
    iput-object v1, p0, Lcom/tencent/mm/ai/a;->cAt:Lcom/tencent/mm/ai/c;

    .line 39
    iput-object v1, p0, Lcom/tencent/mm/ai/a;->cAu:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ai/a;->duration:I

    .line 41
    iput-object v1, p0, Lcom/tencent/mm/ai/a;->intent:Landroid/content/Intent;

    .line 43
    iput-object v1, p0, Lcom/tencent/mm/ai/a;->rD:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/tencent/mm/ai/a;->bOV:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/tencent/mm/ai/a;->cAv:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/tencent/mm/ai/b;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ai/b;-><init>(Lcom/tencent/mm/ai/a;)V

    iput-object v0, p0, Lcom/tencent/mm/ai/a;->cAw:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/mm/ai/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tencent/mm/ai/a;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/tencent/mm/ai/a;->intent:Landroid/content/Intent;

    .line 54
    const/4 v0, 0x2

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/n/f;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ai/r;->gY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ai/a;->rD:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ai/a;->rD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ai/a;->bOV:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ai/a;->rD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ai/a;->cAv:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/tencent/mm/ai/a;->cAt:Lcom/tencent/mm/ai/c;

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/ai/a;->cAw:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method

.method public final cancel()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ai/a;->cAt:Lcom/tencent/mm/ai/c;

    .line 49
    return-void
.end method
