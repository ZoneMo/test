.class final Lcom/tencent/mm/ui/contact/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/eg;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 511
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/eg;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    const-class v2, Lcom/tencent/mm/ui/contact/GroupCardSelectUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    const-string v1, "group_select_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    const-string v1, "group_select_need_result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 514
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/eg;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/contact/SelectContactUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 516
    return-void
.end method
