.class final Lcom/tencent/mm/ui/account/hr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/RegByMobileRegUI;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/tencent/mm/ui/account/hr;->gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 337
    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/account/hr;->gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByMobileRegUI;->e(Lcom/tencent/mm/ui/account/RegByMobileRegUI;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 348
    :cond_1
    :goto_0
    return v0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/account/hr;->gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/hr;->gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByMobileRegUI;->c(Lcom/tencent/mm/ui/account/RegByMobileRegUI;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/account/RegByMobileRegUI;->b(Lcom/tencent/mm/ui/account/RegByMobileRegUI;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/tencent/mm/ui/account/hr;->gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/hr;->gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByMobileRegUI;->a(Lcom/tencent/mm/ui/account/RegByMobileRegUI;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/account/RegByMobileRegUI;->c(Lcom/tencent/mm/ui/account/RegByMobileRegUI;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/account/hr;->gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByMobileRegUI;->f(Lcom/tencent/mm/ui/account/RegByMobileRegUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/hr;->gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByMobileRegUI;->g(Lcom/tencent/mm/ui/account/RegByMobileRegUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/tencent/mm/ui/account/hr;->gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/account/RegByMobileRegUI;->SM()V

    .line 345
    iget-object v1, p0, Lcom/tencent/mm/ui/account/hr;->gsP:Lcom/tencent/mm/ui/account/RegByMobileRegUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/account/RegByMobileRegUI;->d(Lcom/tencent/mm/ui/account/RegByMobileRegUI;Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x1

    goto :goto_0
.end method
