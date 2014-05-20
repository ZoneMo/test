.class final Lcom/tencent/mm/ui/setting/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private gTQ:I

.field final synthetic hdM:Lcom/tencent/mm/ui/setting/EditSignatureUI;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/setting/EditSignatureUI;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/d;->hdM:Lcom/tencent/mm/ui/setting/EditSignatureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/mm/ui/setting/d;->gTQ:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/setting/EditSignatureUI;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/setting/d;-><init>(Lcom/tencent/mm/ui/setting/EditSignatureUI;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/d;->hdM:Lcom/tencent/mm/ui/setting/EditSignatureUI;

    invoke-static {p1}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->v(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/setting/d;->gTQ:I

    .line 122
    iget v0, p0, Lcom/tencent/mm/ui/setting/d;->gTQ:I

    if-gez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/setting/d;->gTQ:I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/d;->hdM:Lcom/tencent/mm/ui/setting/EditSignatureUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->a(Lcom/tencent/mm/ui/setting/EditSignatureUI;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/d;->hdM:Lcom/tencent/mm/ui/setting/EditSignatureUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->a(Lcom/tencent/mm/ui/setting/EditSignatureUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/tencent/mm/ui/setting/d;->gTQ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/d;->hdM:Lcom/tencent/mm/ui/setting/EditSignatureUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->dg(Z)V

    .line 115
    return-void
.end method
