.class final Lcom/tencent/mm/plugin/backup/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic cMg:Lcom/tencent/mm/plugin/backup/ui/BakChatRecoverCheckUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/ui/BakChatRecoverCheckUI;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/ui/k;->cMg:Lcom/tencent/mm/plugin/backup/ui/BakChatRecoverCheckUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/k;->cMg:Lcom/tencent/mm/plugin/backup/ui/BakChatRecoverCheckUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatRecoverCheckUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/ui/k;->cMg:Lcom/tencent/mm/plugin/backup/ui/BakChatRecoverCheckUI;

    const v2, 0x7f070371

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/backup/ui/BakChatRecoverCheckUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Lcom/tencent/mm/plugin/backup/ui/l;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/backup/ui/l;-><init>(Lcom/tencent/mm/plugin/backup/ui/k;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 380
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/x;->setCanceledOnTouchOutside(Z)V

    .line 381
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/x;->setCancelable(Z)V

    .line 383
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/x;->mQ(I)V

    .line 384
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->aGG()V

    .line 385
    return-void
.end method
