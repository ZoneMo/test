.class final Lcom/tencent/mm/app/aa;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic bLu:Lcom/tencent/mm/app/WorkerProfile;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/WorkerProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/tencent/mm/app/aa;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 2
    .parameter

    .prologue
    .line 495
    check-cast p1, Lcom/tencent/mm/c/a/fz;

    .line 496
    iget-object v0, p1, Lcom/tencent/mm/c/a/fz;->bQx:Lcom/tencent/mm/c/a/ga;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ga;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/tencent/mm/c/a/fz;->bQx:Lcom/tencent/mm/c/a/ga;

    iget-object v1, v1, Lcom/tencent/mm/c/a/ga;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/bh;->b(Landroid/content/Intent;Ljava/lang/String;)V

    .line 497
    const/4 v0, 0x0

    return v0
.end method
