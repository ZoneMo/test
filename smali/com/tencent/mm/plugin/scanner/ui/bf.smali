.class final Lcom/tencent/mm/plugin/scanner/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic eeE:Lcom/tencent/mm/plugin/scanner/ui/be;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/be;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/bf;->eeE:Lcom/tencent/mm/plugin/scanner/ui/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 608
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bf;->eeE:Lcom/tencent/mm/plugin/scanner/ui/be;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/be;->eey:Lcom/tencent/mm/plugin/scanner/ui/at;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/at;->d(Lcom/tencent/mm/plugin/scanner/ui/at;)Z

    .line 609
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bf;->eeE:Lcom/tencent/mm/plugin/scanner/ui/be;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/be;->eey:Lcom/tencent/mm/plugin/scanner/ui/at;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/at;->e(Lcom/tencent/mm/plugin/scanner/ui/at;)Z

    .line 610
    return-void
.end method
