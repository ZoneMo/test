.class public final Lcom/tencent/mm/ui/chatting/km;
.super Lcom/tencent/mm/ui/base/f;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cIr:Landroid/app/ProgressDialog;

.field private gQT:Lcom/tencent/mm/ui/widget/MMEditText;

.field private gQU:Lcom/tencent/mm/ui/chatting/kq;

.field private gQV:Lcom/tencent/mm/ui/chatting/kr;

.field private gQW:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/f;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/km;)Lcom/tencent/mm/ui/widget/MMEditText;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->gQT:Lcom/tencent/mm/ui/widget/MMEditText;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/km;)Lcom/tencent/mm/ui/chatting/kq;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->gQU:Lcom/tencent/mm/ui/chatting/kq;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->gQV:Lcom/tencent/mm/ui/chatting/kr;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->gQV:Lcom/tencent/mm/ui/chatting/kr;

    .line 105
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/kq;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/km;->gQU:Lcom/tencent/mm/ui/chatting/kq;

    .line 130
    return-void
.end method

.method public final aKe()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->cIr:Landroid/app/ProgressDialog;

    .line 122
    return-void
.end method

.method public final b(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 4
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/km;->gQW:Landroid/content/DialogInterface$OnCancelListener;

    .line 114
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/km;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/km;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0709bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/km;->gQW:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->cIr:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public final dismiss()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/km;->SM()V

    .line 92
    invoke-super {p0}, Lcom/tencent/mm/ui/base/f;->dismiss()V

    .line 93
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/f;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/km;->do(Z)V

    .line 29
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/km;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/widget/MMEditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->gQT:Lcom/tencent/mm/ui/widget/MMEditText;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kn;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/kn;-><init>(Lcom/tencent/mm/ui/chatting/km;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/km;->m(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/chatting/ko;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ko;-><init>(Lcom/tencent/mm/ui/chatting/km;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/km;->n(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->gQT:Lcom/tencent/mm/ui/widget/MMEditText;

    new-instance v1, Lcom/tencent/mm/ui/chatting/kp;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/kp;-><init>(Lcom/tencent/mm/ui/chatting/km;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 30
    return-void
.end method

.method public final show()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->gQT:Lcom/tencent/mm/ui/widget/MMEditText;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/km;->gQT:Lcom/tencent/mm/ui/widget/MMEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/base/f;->show()V

    .line 87
    return-void
.end method
