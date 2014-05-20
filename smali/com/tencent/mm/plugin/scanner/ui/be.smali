.class final Lcom/tencent/mm/plugin/scanner/ui/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cWD:Landroid/app/Activity;

.field final synthetic eey:Lcom/tencent/mm/plugin/scanner/ui/at;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/at;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/be;->eey:Lcom/tencent/mm/plugin/scanner/ui/at;

    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/ui/be;->cWD:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 605
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/be;->eey:Lcom/tencent/mm/plugin/scanner/ui/at;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/be;->cWD:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/be;->cWD:Landroid/app/Activity;

    sget v3, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/be;->cWD:Landroid/app/Activity;

    sget v3, Lcom/tencent/mm/n;->bui:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/plugin/scanner/ui/bf;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/scanner/ui/bf;-><init>(Lcom/tencent/mm/plugin/scanner/ui/be;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/scanner/ui/at;->cIr:Landroid/app/ProgressDialog;

    .line 612
    return-void
.end method
