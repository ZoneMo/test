.class final Lcom/tencent/mm/ui/contact/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gTN:Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;

.field final synthetic gTP:Lcom/tencent/mm/modelfriend/h;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;Lcom/tencent/mm/modelfriend/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/cc;->gTN:Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/cc;->gTP:Lcom/tencent/mm/modelfriend/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/cc;->gTN:Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;->n(Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;)Lcom/tencent/mm/ui/widget/MMEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/cc;->gTP:Lcom/tencent/mm/modelfriend/h;

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/cc;->gTN:Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;->n(Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;)Lcom/tencent/mm/ui/widget/MMEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/cc;->gTN:Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;->n(Lcom/tencent/mm/ui/contact/ContactRemarkInfoModUI;)Lcom/tencent/mm/ui/widget/MMEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/widget/MMEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setSelection(I)V

    .line 474
    return-void
.end method
