.class public Lcom/tencent/mm/ui/base/MMSuperAlert;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/base/MMSuperAlert;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "MMSuperAlert_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "MMSuperAlert_msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v1, "MMSuperAlert_cancelable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lcom/tencent/mm/k;->aXl:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/MMSuperAlert;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMSuperAlert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MMSuperAlert_msg"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 26
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMSuperAlert;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MMSuperAlert_title"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 27
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/MMSuperAlert;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "MMSuperAlert_cancelable"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 28
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/tencent/mm/ui/base/de;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/tencent/mm/ui/base/de;-><init>(Lcom/tencent/mm/ui/base/MMSuperAlert;IIZ)V

    const-wide/16 v0, 0x32

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    return-void
.end method
