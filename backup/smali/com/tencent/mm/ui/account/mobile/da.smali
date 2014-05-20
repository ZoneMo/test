.class final Lcom/tencent/mm/ui/account/mobile/da;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mobile/da;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/da;->gwT:Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->gwM:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/account/mobile/db;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/mobile/db;-><init>(Lcom/tencent/mm/ui/account/mobile/da;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method
