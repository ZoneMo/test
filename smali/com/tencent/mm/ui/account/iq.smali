.class final Lcom/tencent/mm/ui/account/iq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gty:Lcom/tencent/mm/ui/account/RegByQQUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/RegByQQUI;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/mm/ui/account/iq;->gty:Lcom/tencent/mm/ui/account/RegByQQUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/mm/ui/account/iq;->gty:Lcom/tencent/mm/ui/account/RegByQQUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/RegByQQUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/iq;->gty:Lcom/tencent/mm/ui/account/RegByQQUI;

    sget v2, Lcom/tencent/mm/n;->bDF:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/account/RegByQQUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->w(Landroid/content/Context;Ljava/lang/String;)Z

    .line 118
    return-void
.end method
