.class final Lcom/tencent/mm/ui/account/kr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic guk:Lcom/tencent/mm/ui/account/kq;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/kq;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/tencent/mm/ui/account/kr;->guk:Lcom/tencent/mm/ui/account/kq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kr;->guk:Lcom/tencent/mm/ui/account/kq;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/kq;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->a(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 370
    iget-object v0, p0, Lcom/tencent/mm/ui/account/kr;->guk:Lcom/tencent/mm/ui/account/kq;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/kq;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->a(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 371
    return-void
.end method
