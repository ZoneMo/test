.class public abstract Lcom/tencent/mm/ui/cy;
.super Lcom/tencent/mm/ui/x;
.source "SourceFile"


# static fields
.field private static gnp:Z

.field private static gnu:I

.field private static gnv:I

.field private static gok:Lcom/tencent/mm/ui/cy;


# instance fields
.field private cBR:Landroid/media/AudioManager;

.field private cYm:Landroid/view/View;

.field private chz:Landroid/content/SharedPreferences;

.field className:Ljava/lang/String;

.field private dLe:Landroid/view/LayoutInflater;

.field private eNl:I

.field private gmP:Landroid/view/View;

.field private gmQ:Landroid/view/View;

.field private gmR:Landroid/widget/LinearLayout;

.field private gmS:Landroid/widget/RelativeLayout;

.field private gmT:Landroid/view/View;

.field private gmU:Landroid/widget/TextView;

.field protected gni:Z

.field private gnr:Lcom/tencent/mm/c/a/hk;

.field private gns:Lcom/tencent/mm/sdk/b/g;

.field private gnt:Landroid/content/Intent;

.field private gnw:I

.field protected goi:Lcom/tencent/mm/ui/g;

.field protected goj:Landroid/support/v7/app/ActionBarActivity;

.field private gol:Lcom/tencent/mm/ui/di;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    sput-boolean v0, Lcom/tencent/mm/ui/cy;->gnp:Z

    .line 267
    sput v0, Lcom/tencent/mm/ui/cy;->gnu:I

    .line 268
    sput v0, Lcom/tencent/mm/ui/cy;->gnv:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lcom/tencent/mm/ui/x;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    .line 76
    iput-boolean v3, p0, Lcom/tencent/mm/ui/cy;->gni:Z

    .line 81
    iput-object v2, p0, Lcom/tencent/mm/ui/cy;->chz:Landroid/content/SharedPreferences;

    .line 82
    iput-object v2, p0, Lcom/tencent/mm/ui/cy;->gnr:Lcom/tencent/mm/c/a/hk;

    .line 83
    new-instance v0, Lcom/tencent/mm/ui/cz;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/cz;-><init>(Lcom/tencent/mm/ui/cy;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gns:Lcom/tencent/mm/sdk/b/g;

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.ui.TOP_MARGIN_LAYOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gnt:Landroid/content/Intent;

    .line 474
    iput v3, p0, Lcom/tencent/mm/ui/cy;->gnw:I

    .line 962
    iput-object v2, p0, Lcom/tencent/mm/ui/cy;->gol:Lcom/tencent/mm/ui/di;

    .line 99
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/x;-><init>(Z)V

    .line 62
    iput-object v2, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    .line 76
    iput-boolean v3, p0, Lcom/tencent/mm/ui/cy;->gni:Z

    .line 81
    iput-object v2, p0, Lcom/tencent/mm/ui/cy;->chz:Landroid/content/SharedPreferences;

    .line 82
    iput-object v2, p0, Lcom/tencent/mm/ui/cy;->gnr:Lcom/tencent/mm/c/a/hk;

    .line 83
    new-instance v0, Lcom/tencent/mm/ui/cz;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/cz;-><init>(Lcom/tencent/mm/ui/cy;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gns:Lcom/tencent/mm/sdk/b/g;

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.ui.TOP_MARGIN_LAYOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gnt:Landroid/content/Intent;

    .line 474
    iput v3, p0, Lcom/tencent/mm/ui/cy;->gnw:I

    .line 962
    iput-object v2, p0, Lcom/tencent/mm/ui/cy;->gol:Lcom/tencent/mm/ui/di;

    .line 103
    return-void
.end method

.method private Iw()I
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->aFq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    sget v0, Lcom/tencent/mm/k;->aWA:I

    .line 704
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/tencent/mm/k;->aXm:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/cy;)Lcom/tencent/mm/c/a/hk;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gnr:Lcom/tencent/mm/c/a/hk;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/cy;Lcom/tencent/mm/c/a/hk;)Lcom/tencent/mm/c/a/hk;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tencent/mm/ui/cy;->gnr:Lcom/tencent/mm/c/a/hk;

    return-object p1
.end method

.method private a(IZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 119
    const-string v0, "MicroMsg.MMActivity"

    const-string v3, "initNotifyView viewid %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/g;->aDT()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmR:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 133
    :cond_2
    sget v0, Lcom/tencent/mm/k;->aXp:I

    .line 134
    if-lez p1, :cond_7

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->dLe:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    sget v3, Lcom/tencent/mm/i;->aCY:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gmU:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    sget v3, Lcom/tencent/mm/i;->aCU:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/tencent/mm/ui/da;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/da;-><init>(Lcom/tencent/mm/ui/cy;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    new-instance v3, Lcom/tencent/mm/ui/db;

    invoke-direct {v3, p0, p3}, Lcom/tencent/mm/ui/db;-><init>(Lcom/tencent/mm/ui/cy;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmR:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/high16 v6, 0x423c

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 168
    if-eqz p5, :cond_6

    .line 169
    iget-object v3, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    if-eqz p2, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    sget v0, Lcom/tencent/mm/n;->bpe:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/cy;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {p4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/tencent/mm/n;->bpd:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/cy;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 173
    :cond_3
    if-eqz p3, :cond_5

    .line 174
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x9a6919

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmU:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 181
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmR:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 169
    goto :goto_2

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmU:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 183
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/dc;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/tencent/mm/ui/dc;-><init>(Lcom/tencent/mm/ui/cy;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    move p1, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/cy;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/cy;->a(IZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private aFa()Landroid/view/View;
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->dLe:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aFh()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/tencent/mm/ui/cy;->gnv:I

    return v0
.end method

.method public static aFp()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method static synthetic aFr()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/tencent/mm/ui/cy;->gnu:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/cy;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmT:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/cy;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmU:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/cy;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmR:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private dc(Z)V
    .locals 5
    .parameter

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "classname"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/ui/base/ej;->a(Landroid/content/Context;ZLandroid/content/Intent;)V

    .line 674
    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/cy;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gnt:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/cy;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/cy;->gnw:I

    return-void
.end method

.method static synthetic g(Lcom/tencent/mm/ui/cy;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/cy;->gnw:I

    return-void
.end method

.method static synthetic mH(I)I
    .locals 0
    .parameter

    .prologue
    .line 53
    sput p0, Lcom/tencent/mm/ui/cy;->gnv:I

    return p0
.end method

.method static synthetic mJ(I)I
    .locals 0
    .parameter

    .prologue
    .line 53
    sput p0, Lcom/tencent/mm/ui/cy;->gnu:I

    return p0
.end method


# virtual methods
.method protected FR()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 713
    return-void
.end method

.method public final SM()V
    .locals 3

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 882
    if-nez v0, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 886
    if-eqz v1, :cond_0

    .line 889
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 890
    if-eqz v1, :cond_0

    .line 893
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, -0x2

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 377
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->aFq()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 378
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->aal()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 466
    :goto_0
    return-object v0

    .line 378
    :cond_0
    sget v0, Lcom/tencent/mm/k;->aWv:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->aBB:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gmR:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/tencent/mm/ui/cy;->Iw()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/cy;->gmR:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->getLayoutId()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/ui/cy;->aFa()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gmP:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmR:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/cy;->gmP:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/g;

    iget-object v1, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/g;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBr:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/LayoutListenerView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/tencent/mm/ui/dd;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/dd;-><init>(Lcom/tencent/mm/ui/cy;Lcom/tencent/mm/ui/LayoutListenerView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LayoutListenerView;->a(Lcom/tencent/mm/ui/ba;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    new-instance v1, Lcom/tencent/mm/ui/de;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/de;-><init>(Lcom/tencent/mm/ui/cy;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LayoutListenerView;->a(Lcom/tencent/mm/ui/bb;)V

    :cond_3
    new-instance v0, Lcom/tencent/mm/c/a/m;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/m;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    iput v4, v1, Lcom/tencent/mm/c/a/n;->type:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget v1, v1, Lcom/tencent/mm/c/a/o;->bLZ:I

    if-ne v1, v4, :cond_4

    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget v1, v1, Lcom/tencent/mm/c/a/o;->bMb:I

    iget-object v2, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-boolean v2, v2, Lcom/tencent/mm/c/a/o;->visible:Z

    iget-object v3, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-object v3, v3, Lcom/tencent/mm/c/a/o;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-object v4, v0, Lcom/tencent/mm/c/a/o;->desc:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/cy;->a(IZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    goto/16 :goto_0

    .line 380
    :cond_5
    sget v0, Lcom/tencent/mm/k;->aWn:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    .line 381
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->aBB:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gmR:Landroid/widget/LinearLayout;

    .line 382
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->aBu:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gmS:Landroid/widget/RelativeLayout;

    .line 383
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->aBC:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gmQ:Landroid/view/View;

    .line 385
    invoke-direct {p0}, Lcom/tencent/mm/ui/cy;->Iw()I

    move-result v0

    .line 386
    if-eq v0, v3, :cond_6

    .line 387
    iget-object v2, p0, Lcom/tencent/mm/ui/cy;->gmR:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 390
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->getLayoutId()I

    move-result v0

    .line 391
    if-eq v0, v3, :cond_7

    .line 394
    invoke-direct {p0}, Lcom/tencent/mm/ui/cy;->aFa()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gmP:Landroid/view/View;

    .line 397
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gmR:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/cy;->gmP:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 400
    :cond_7
    new-instance v0, Lcom/tencent/mm/ui/g;

    iget-object v1, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/g;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    .line 402
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBs:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 403
    if-eqz v0, :cond_8

    .line 404
    new-instance v1, Lcom/tencent/mm/ui/df;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/df;-><init>(Lcom/tencent/mm/ui/cy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 415
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBr:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/LayoutListenerView;

    .line 416
    if-eqz v0, :cond_9

    .line 417
    new-instance v1, Lcom/tencent/mm/ui/dg;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/dg;-><init>(Lcom/tencent/mm/ui/cy;Lcom/tencent/mm/ui/LayoutListenerView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LayoutListenerView;->a(Lcom/tencent/mm/ui/ba;)V

    .line 436
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 437
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 439
    new-instance v1, Lcom/tencent/mm/ui/dh;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/dh;-><init>(Lcom/tencent/mm/ui/cy;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LayoutListenerView;->a(Lcom/tencent/mm/ui/bb;)V

    .line 458
    :cond_9
    new-instance v0, Lcom/tencent/mm/c/a/m;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/m;-><init>()V

    .line 459
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    iput v4, v1, Lcom/tencent/mm/c/a/n;->type:I

    .line 460
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 462
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget v1, v1, Lcom/tencent/mm/c/a/o;->bLZ:I

    if-ne v1, v4, :cond_a

    .line 463
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget v1, v1, Lcom/tencent/mm/c/a/o;->bMb:I

    iget-object v2, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-boolean v2, v2, Lcom/tencent/mm/c/a/o;->visible:Z

    iget-object v3, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-object v3, v3, Lcom/tencent/mm/c/a/o;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-object v4, v0, Lcom/tencent/mm/c/a/o;->desc:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/cy;->a(IZLjava/lang/String;Ljava/lang/String;Z)V

    .line 466
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cYm:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public final a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 804
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/tencent/mm/ui/g;->a(Ljava/lang/Object;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/mm/ui/cy;->goj:Landroid/support/v7/app/ActionBarActivity;

    .line 107
    return-void
.end method

.method protected final a(Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 877
    invoke-virtual {p0, p2}, Lcom/tencent/mm/ui/cy;->startActivity(Landroid/content/Intent;)V

    .line 878
    return-void
.end method

.method public final aFo()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/g;->aDT()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "hide title view, but controller is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected aFq()Z
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public final aal()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 504
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 812
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/ui/g;->a(Ljava/lang/Object;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method protected final e(Ljava/lang/Class;)V
    .locals 2
    .parameter

    .prologue
    .line 870
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 871
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 872
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/cy;->startActivity(Landroid/content/Intent;)V

    .line 873
    return-void
.end method

.method protected abstract getLayoutId()I
.end method

.method public final l(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 744
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/g;->l(Landroid/view/View$OnClickListener;)V

    .line 745
    return-void
.end method

.method public final m(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;
    .locals 1
    .parameter

    .prologue
    .line 800
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/g;->m(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final mm(I)V
    .locals 1
    .parameter

    .prologue
    .line 858
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/g;->mm(I)V

    .line 859
    return-void
.end method

.method public final mn(I)V
    .locals 1
    .parameter

    .prologue
    .line 760
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->goi:Lcom/tencent/mm/ui/g;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/g;->mn(I)V

    .line 761
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 553
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/x;->onActivityCreated(Landroid/os/Bundle;)V

    .line 555
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 981
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gol:Lcom/tencent/mm/ui/di;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->gol:Lcom/tencent/mm/ui/di;

    .line 984
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->gol:Lcom/tencent/mm/ui/di;

    .line 985
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 559
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/x;->onAttach(Landroid/app/Activity;)V

    .line 561
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 276
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/x;->onCreate(Landroid/os/Bundle;)V

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->className:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->className:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/tencent/mm/ui/fc;->w(ILjava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "language_default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->chz:Landroid/content/SharedPreferences;

    .line 283
    invoke-static {}, Lcom/tencent/mm/ui/fb;->aFD()Lcom/tencent/mm/ui/fb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/fb;->aFE()Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->cBR:Landroid/media/AudioManager;

    .line 284
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cBR:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/cy;->eNl:I

    .line 285
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->dLe:Landroid/view/LayoutInflater;

    .line 286
    return-void

    .line 279
    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/z;->sA(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 946
    const-string v0, "MMActivity.OverrideEnterAnimation"

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/cy;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 947
    const-string v1, "MMActivity.OverrideExitAnimation"

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/cy;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 949
    if-eq v0, v2, :cond_0

    .line 950
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 952
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/x;->onDestroy()V

    .line 953
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .prologue
    .line 565
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-super {p0}, Lcom/tencent/mm/ui/x;->onDestroyView()V

    .line 567
    return-void
.end method

.method public final onDetach()V
    .locals 2

    .prologue
    .line 571
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-super {p0}, Lcom/tencent/mm/ui/x;->onDetach()V

    .line 573
    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 957
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "onHiddenChanged"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/x;->onHiddenChanged(Z)V

    .line 959
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 611
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cBR:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cBR:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 615
    iget v0, p0, Lcom/tencent/mm/ui/cy;->eNl:I

    div-int/lit8 v0, v0, 0x7

    .line 616
    if-nez v0, :cond_0

    move v0, v1

    .line 619
    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/ui/cy;->cBR:Landroid/media/AudioManager;

    sub-int v0, v2, v0

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 636
    :goto_0
    return v1

    .line 623
    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cBR:Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    .line 624
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->cBR:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 625
    iget v0, p0, Lcom/tencent/mm/ui/cy;->eNl:I

    if-lt v2, v0, :cond_2

    .line 626
    const-string v0, "MicroMsg.MMActivity"

    const-string v2, "has set the max volume"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/cy;->eNl:I

    div-int/lit8 v0, v0, 0x7

    .line 630
    if-nez v0, :cond_3

    move v0, v1

    .line 633
    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/ui/cy;->cBR:Landroid/media/AudioManager;

    add-int/2addr v0, v2

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 636
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/x;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 682
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/mm/ui/cy;->className:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/fc;->w(ILjava/lang/String;)V

    .line 683
    invoke-super {p0}, Lcom/tencent/mm/ui/x;->onPause()V

    .line 684
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/mm/ui/cy;->gok:Lcom/tencent/mm/ui/cy;

    .line 685
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/cy;->dc(Z)V

    .line 688
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    const-string v3, "UINotify"

    iget-object v4, p0, Lcom/tencent/mm/ui/cy;->gns:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v2, v3, v4}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 689
    const-string v2, "MicroMsg.INIT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEVIN MMActivity onPause:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 651
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->className:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/tencent/mm/ui/fc;->w(ILjava/lang/String;)V

    .line 652
    invoke-super {p0}, Lcom/tencent/mm/ui/x;->onResume()V

    .line 653
    const-string v0, "MicroMsg.INIT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEVIN MMActivity super.onResume "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    sput-object p0, Lcom/tencent/mm/ui/cy;->gok:Lcom/tencent/mm/ui/cy;

    .line 656
    invoke-direct {p0, v5}, Lcom/tencent/mm/ui/cy;->dc(Z)V

    .line 659
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "UINotify"

    iget-object v2, p0, Lcom/tencent/mm/ui/cy;->gns:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 660
    new-instance v0, Lcom/tencent/mm/c/a/m;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/m;-><init>()V

    .line 661
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    iput v4, v1, Lcom/tencent/mm/c/a/n;->type:I

    .line 662
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 664
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget v1, v1, Lcom/tencent/mm/c/a/o;->bLZ:I

    if-ne v1, v4, :cond_0

    .line 665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 666
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget v1, v1, Lcom/tencent/mm/c/a/o;->bMb:I

    iget-object v2, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-boolean v2, v2, Lcom/tencent/mm/c/a/o;->visible:Z

    iget-object v3, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-object v3, v3, Lcom/tencent/mm/c/a/o;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/c/a/m;->bLV:Lcom/tencent/mm/c/a/o;

    iget-object v4, v0, Lcom/tencent/mm/c/a/o;->desc:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/cy;->a(IZLjava/lang/String;Ljava/lang/String;Z)V

    .line 667
    const-string v0, "MicroMsg.INIT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEVIN MMActivity onResume initNotifyView:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_0
    const-string v0, "MicroMsg.INIT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEVIN MMActivity onResume :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 495
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 496
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/x;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 498
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 584
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/cy;->chz:Landroid/content/SharedPreferences;

    .line 588
    iget-object v0, p0, Lcom/tencent/mm/ui/cy;->chz:Landroid/content/SharedPreferences;

    const-string v1, "settings_landscape_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/cy;->gni:Z

    .line 589
    iget-boolean v0, p0, Lcom/tencent/mm/ui/cy;->gni:Z

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 595
    :goto_0
    invoke-super {p0}, Lcom/tencent/mm/ui/x;->onStart()V

    .line 599
    return-void

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/cy;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 577
    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-super {p0}, Lcom/tencent/mm/ui/x;->onStop()V

    .line 579
    return-void
.end method
