.class public Lcom/tencent/mm/ui/setting/EditSignatureUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private hdL:Landroid/widget/EditText;

.field private hdw:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/EditSignatureUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdw:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/EditSignatureUI;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdL:Landroid/widget/EditText;

    return-object v0
.end method

.method private static q(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-static {p0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->r(Ljava/lang/CharSequence;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method private static r(Ljava/lang/CharSequence;)F
    .locals 3
    .parameter

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 54
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->l(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    .line 53
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    goto :goto_1

    .line 60
    :cond_1
    return v1
.end method

.method static synthetic u(Ljava/lang/CharSequence;)F
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->r(Ljava/lang/CharSequence;)F

    move-result v0

    return v0
.end method

.method static synthetic v(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->q(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected final FR()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    const v0, 0x7f070a3c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->mn(I)V

    .line 138
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdL:Landroid/widget/EditText;

    .line 139
    const v0, 0x7f0a0283

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdw:Landroid/widget/TextView;

    .line 141
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x3003

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdL:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdL:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdL:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdw:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdL:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->q(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdL:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/tencent/mm/ui/setting/c;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/c;-><init>(Lcom/tencent/mm/ui/setting/EditSignatureUI;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 147
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->hdL:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/setting/d;

    invoke-direct {v1, p0, v3}, Lcom/tencent/mm/ui/setting/d;-><init>(Lcom/tencent/mm/ui/setting/EditSignatureUI;B)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    new-instance v0, Lcom/tencent/mm/ui/setting/a;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/a;-><init>(Lcom/tencent/mm/ui/setting/EditSignatureUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 160
    const v0, 0x7f0709c5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/setting/b;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/b;-><init>(Lcom/tencent/mm/ui/setting/EditSignatureUI;)V

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 191
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->dg(Z)V

    .line 192
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0300d6

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->FR()V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 48
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 195
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->finish()V

    .line 198
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
