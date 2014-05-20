.class final Lcom/tencent/mm/ui/account/mobile/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gvX:Lcom/tencent/mm/ui/account/mobile/o;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/mobile/o;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mobile/z;->gvX:Lcom/tencent/mm/ui/account/mobile/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 320
    const-string v0, "MicroMsg.MobileInputLoginLogic"

    const-string v1, "onSceneEnd, in runnable"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/z;->gvX:Lcom/tencent/mm/ui/account/mobile/o;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/mobile/o;->b(Lcom/tencent/mm/ui/account/mobile/o;)Lcom/tencent/mm/ui/account/mobile/MobileInputUI;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/e;->w(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 322
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/z;->gvX:Lcom/tencent/mm/ui/account/mobile/o;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/mobile/o;->b(Lcom/tencent/mm/ui/account/mobile/o;)Lcom/tencent/mm/ui/account/mobile/MobileInputUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/account/mobile/MobileInputUI;->startActivity(Landroid/content/Intent;)V

    .line 324
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/z;->gvX:Lcom/tencent/mm/ui/account/mobile/o;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/mobile/o;->b(Lcom/tencent/mm/ui/account/mobile/o;)Lcom/tencent/mm/ui/account/mobile/MobileInputUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/mobile/MobileInputUI;->finish()V

    .line 325
    return-void
.end method
