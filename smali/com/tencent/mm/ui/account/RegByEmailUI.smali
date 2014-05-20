.class public Lcom/tencent/mm/ui/account/RegByEmailUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# static fields
.field private static gsq:[Ljava/lang/String;


# instance fields
.field private bTQ:Ljava/lang/String;

.field private cIr:Landroid/app/ProgressDialog;

.field private eaA:Ljava/lang/String;

.field private frL:Landroid/widget/CheckBox;

.field private gro:Ljava/lang/String;

.field private gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

.field private gsn:Landroid/widget/EditText;

.field private gso:Ljava/lang/String;

.field private gsp:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->cIr:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/account/RegByEmailUI;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsn:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/account/RegByEmailUI;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->frL:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->dg(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->dg(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/account/RegByEmailUI;)V
    .locals 4
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->bTQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gro:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->bTQ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/tencent/mm/n;->bve:I

    sget v1, Lcom/tencent/mm/n;->bva:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->bTQ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hT(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/tencent/mm/n;->bvd:I

    sget v1, Lcom/tencent/mm/n;->bva:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gro:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/tencent/mm/n;->bvf:I

    sget v1, Lcom/tencent/mm/n;->bva:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gro:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hV(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/tencent/mm/n;->bEg:I

    sget v1, Lcom/tencent/mm/n;->bva:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->SM()V

    new-instance v0, Lcom/tencent/mm/modelfriend/aj;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->bTQ:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gro:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelfriend/aj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegByEmailUI;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->beu:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegByEmailUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/account/ft;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/account/ft;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;Lcom/tencent/mm/modelfriend/aj;)V

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->cIr:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/account/RegByEmailUI;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->frL:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/account/RegByEmailUI;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->goBack()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/ui/account/RegByEmailUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->eaA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/account/RegByEmailUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->bTQ:Ljava/lang/String;

    return-object v0
.end method

.method private goBack()V
    .locals 7

    .prologue
    .line 245
    sget v1, Lcom/tencent/mm/n;->buX:I

    sget v2, Lcom/tencent/mm/n;->bva:I

    sget v3, Lcom/tencent/mm/n;->bee:I

    sget v4, Lcom/tencent/mm/n;->bds:I

    new-instance v5, Lcom/tencent/mm/ui/account/fs;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/account/fs;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 255
    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    sget v0, Lcom/tencent/mm/i;->aGT:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    .line 114
    sget v0, Lcom/tencent/mm/i;->aGZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsn:Landroid/widget/EditText;

    .line 115
    sget v0, Lcom/tencent/mm/i;->alk:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->frL:Landroid/widget/CheckBox;

    .line 117
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gso:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsn:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/fr;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/fr;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsq:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Lcom/tencent/mm/ui/account/c;

    sget-object v1, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsq:[Ljava/lang/String;

    const-string v2, "@"

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/mm/ui/account/c;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;->wi(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    sget v2, Lcom/tencent/mm/i;->aGU:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;->setDropDownAnchor(I)V

    .line 133
    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 134
    iget-object v1, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    :cond_1
    sget v0, Lcom/tencent/mm/i;->alj:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/account/fv;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/fv;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->frL:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tencent/mm/ui/account/fw;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/fw;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    sget v0, Lcom/tencent/mm/n;->bec:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/account/fx;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/fx;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/mm/ui/account/RegByEmailUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 164
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/account/RegByEmailUI;->dg(Z)V

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsm:Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;

    new-instance v1, Lcom/tencent/mm/ui/account/fy;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/fy;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsn:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/fz;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/fz;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsn:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/ga;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/ga;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 217
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsn:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/gb;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/gb;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 233
    new-instance v0, Lcom/tencent/mm/ui/account/gc;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/account/gc;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 242
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 370
    const-string v0, "MicroMsg.RegByEmailUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd: errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 373
    iput-object v6, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->cIr:Landroid/app/ProgressDialog;

    .line 375
    :cond_0
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x1e1

    if-eq v0, v1, :cond_2

    .line 376
    const-string v0, "MicroMsg.RegByEmailUI"

    const-string v1, "error cgi type callback:[%d]"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :cond_1
    :goto_0
    return-void

    .line 380
    :cond_2
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 381
    const-string v0, "R500_200"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 382
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/tencent/mm/ui/account/EmailVerifyUI;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    const-string v0, "email_address"

    iget-object v2, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->bTQ:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v0, "password"

    iget-object v2, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gro:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsp:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 386
    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->bTQ:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_3

    array-length v2, v0

    if-ne v2, v9, :cond_3

    .line 388
    aget-object v0, v0, v7

    .line 389
    const-string v2, "email_login_page"

    iget-object v3, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsp:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    :cond_3
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegByEmailUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 394
    :cond_4
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/mm/pluginsdk/d;->b(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v7

    :goto_1
    if-nez v0, :cond_1

    .line 397
    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 398
    const-string v0, "e"

    invoke-static {p3, v0}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 400
    const-string v1, ".e.Content"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 402
    sget v1, Lcom/tencent/mm/n;->bva:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegByEmailUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    .line 394
    :cond_5
    sparse-switch p2, :sswitch_data_0

    move v0, v8

    goto :goto_1

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R20_email_duplicate_confirm,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R20_email_duplicate_confirm"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->if(Ljava/lang/String;)V

    sget v1, Lcom/tencent/mm/n;->bvk:I

    sget v2, Lcom/tencent/mm/n;->bva:I

    sget v3, Lcom/tencent/mm/n;->bvm:I

    sget v4, Lcom/tencent/mm/n;->bvl:I

    new-instance v5, Lcom/tencent/mm/ui/account/fu;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/account/fu;-><init>(Lcom/tencent/mm/ui/account/RegByEmailUI;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move v0, v7

    goto/16 :goto_1

    :sswitch_1
    sget v0, Lcom/tencent/mm/n;->bvd:I

    sget v1, Lcom/tencent/mm/n;->bva:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    move v0, v7

    goto/16 :goto_1

    :sswitch_2
    sget v0, Lcom/tencent/mm/n;->buY:I

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v7

    goto/16 :goto_1

    :sswitch_3
    sget v0, Lcom/tencent/mm/n;->bdo:I

    sget v1, Lcom/tencent/mm/n;->buW:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    move v0, v7

    goto/16 :goto_1

    .line 409
    :cond_6
    sget v0, Lcom/tencent/mm/n;->bvh:I

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/account/RegByEmailUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 394
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f -> :sswitch_1
        -0x4b -> :sswitch_3
        -0x22 -> :sswitch_2
        -0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/tencent/mm/k;->aYz:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Lcom/tencent/mm/n;->bvj:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-boolean v1, Lcom/tencent/mm/protocal/a;->fxu:Z

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/tencent/mm/n;->amt:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegByEmailUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bdl:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/RegByEmailUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->vT(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/d;->nJ()V

    .line 70
    invoke-static {p0}, Lcom/tencent/mm/modelsimple/f;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gso:Ljava/lang/String;

    const-string v0, "MicroMsg.RegByEmailUI"

    const-string v1, "get google account:[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gso:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/tencent/mm/plugin/accountsync/b/a;->cHZ:Lcom/tencent/mm/plugin/accountsync/b/a;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/accountsync/b/a;->ai(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsp:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsp:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsq:[Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/ui/account/RegByEmailUI;->gsq:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    :cond_1
    invoke-static {}, Lcom/tencent/mm/plugin/a/b;->FL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/RegByEmailUI;->eaA:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->FR()V

    .line 75
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 259
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/RegByEmailUI;->goBack()V

    .line 261
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 97
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 98
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",R500_100,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "R500_100"

    invoke-static {v2}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 88
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 89
    const-string v0, "R500_100"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->id(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",R500_100,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "R500_100"

    invoke-static {v2}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    .line 92
    return-void
.end method
