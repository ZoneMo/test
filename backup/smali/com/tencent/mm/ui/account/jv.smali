.class final Lcom/tencent/mm/ui/account/jv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/RegSetInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/tencent/mm/ui/account/jv;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/tencent/mm/ui/account/jv;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->a(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 868
    iget-object v0, p0, Lcom/tencent/mm/ui/account/jv;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegSetInfoUI;->a(Lcom/tencent/mm/ui/account/RegSetInfoUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 869
    return-void
.end method
