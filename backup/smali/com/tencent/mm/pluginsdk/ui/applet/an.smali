.class public final Lcom/tencent/mm/pluginsdk/ui/applet/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cHU:Lcom/tencent/mm/ui/base/ch;

.field private context:Landroid/content/Context;

.field private dQC:Landroid/widget/EditText;

.field private dVr:Ljava/util/LinkedList;

.field private dpV:Lcom/tencent/mm/ui/base/x;

.field private fnz:Ljava/lang/String;

.field private foT:Lcom/tencent/mm/pluginsdk/ui/applet/au;

.field private foU:Landroid/view/View;

.field private foV:Landroid/widget/TextView;

.field private foW:Ljava/util/LinkedList;

.field private foX:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ui/applet/au;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dpV:Lcom/tencent/mm/ui/base/x;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foX:Z

    .line 60
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foT:Lcom/tencent/mm/pluginsdk/ui/applet/au;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/applet/an;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->bya:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/pluginsdk/ui/applet/at;

    invoke-direct {v3, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/at;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->cHU:Lcom/tencent/mm/ui/base/ch;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v6

    new-instance v0, Lcom/tencent/mm/pluginsdk/model/j;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foW:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dVr:Ljava/util/LinkedList;

    const-string v5, ""

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/model/j;-><init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dpV:Lcom/tencent/mm/ui/base/x;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dpV:Lcom/tencent/mm/ui/base/x;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foU:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dQC:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->onStop()V

    return-void
.end method

.method static synthetic g(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Lcom/tencent/mm/pluginsdk/ui/applet/au;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foT:Lcom/tencent/mm/pluginsdk/ui/applet/au;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/pluginsdk/ui/applet/an;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    return-object v0
.end method

.method private onStart()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 78
    return-void
.end method

.method private onStop()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dpV:Lcom/tencent/mm/ui/base/x;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dpV:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->dismiss()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dpV:Lcom/tencent/mm/ui/base/x;

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 214
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    .line 215
    const-string v0, "MicroMsg.SendVerifyRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not expected scene,  type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string v0, "MicroMsg.SendVerifyRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd, errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->cHU:Lcom/tencent/mm/ui/base/ch;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->cHU:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->cHU:Lcom/tencent/mm/ui/base/ch;

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->onStop()V

    .line 228
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 229
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foX:Z

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->bxZ:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foT:Lcom/tencent/mm/pluginsdk/ui/applet/au;

    invoke-interface {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/au;->cp(Z)V

    goto :goto_0

    .line 234
    :cond_3
    if-ne p1, v4, :cond_5

    const/16 v0, -0x22

    if-ne p2, v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/n;->bmv:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_1
    iget-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foX:Z

    if-eqz v1, :cond_4

    .line 243
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foT:Lcom/tencent/mm/pluginsdk/ui/applet/au;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/au;->cp(Z)V

    goto :goto_0

    .line 237
    :cond_5
    if-ne p1, v4, :cond_6

    const/16 v0, -0x5e

    if-ne p2, v0, :cond_6

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/n;->bmw:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/n;->bxY:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final c(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 90
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 92
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->onStart()V

    .line 93
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foW:Ljava/util/LinkedList;

    .line 94
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dVr:Ljava/util/LinkedList;

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/k;->aZn:I

    invoke-static {v0, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foU:Landroid/view/View;

    .line 97
    const-string v3, "MicroMsg.SendVerifyRequest"

    const-string v4, "verifyTip is null: %b, length : %d, value : [%s]"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->fnz:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->fnz:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->fnz:Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->fnz:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foU:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aIZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->fnz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foU:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aIY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dQC:Landroid/widget/EditText;

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foU:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aRF:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foV:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dQC:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foV:Landroid/widget/TextView;

    const-string v1, "50"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dQC:Landroid/widget/EditText;

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/tools/p;->fux:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dQC:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/applet/ao;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ao;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/ap;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ap;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V

    .line 158
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/applet/ar;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ar;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V

    .line 173
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->context:Landroid/content/Context;

    sget v4, Lcom/tencent/mm/n;->byb:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foU:Landroid/view/View;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dpV:Lcom/tencent/mm/ui/base/x;

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dpV:Lcom/tencent/mm/ui/base/x;

    if-nez v0, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->onStop()V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->dQC:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/applet/as;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/as;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void

    :cond_2
    move v0, v2

    .line 89
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 90
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 97
    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->fnz:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto/16 :goto_3
.end method

.method public final d(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->foX:Z

    .line 208
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->onStart()V

    .line 209
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v6

    new-instance v0, Lcom/tencent/mm/pluginsdk/model/j;

    const/4 v1, 0x2

    const-string v4, ""

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/model/j;-><init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 210
    return-void
.end method

.method public final qF(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/an;->fnz:Ljava/lang/String;

    .line 69
    return-void
.end method
