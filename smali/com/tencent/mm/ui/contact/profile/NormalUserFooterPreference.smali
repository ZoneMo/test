.class public Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;
.super Lcom/tencent/mm/ui/base/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/al;


# instance fields
.field private bLH:Lcom/tencent/mm/ui/MMActivity;

.field public cIr:Landroid/app/ProgressDialog;

.field private cQI:Lcom/tencent/mm/storage/i;

.field protected ckD:Lcom/tencent/mm/sdk/e/am;

.field private dNx:Z

.field private eDW:Landroid/widget/Button;

.field private edN:I

.field private frx:Ljava/lang/String;

.field private fsg:Z

.field private fst:Z

.field private gWT:Z

.field private gWU:Z

.field private gWV:Z

.field private gWW:Lcom/tencent/mm/ui/contact/profile/cb;

.field private gWX:Landroid/view/View;

.field private gWY:Landroid/widget/Button;

.field private gWZ:Landroid/widget/Button;

.field private gWq:I

.field private gWx:Ljava/lang/String;

.field private gXa:Landroid/widget/Button;

.field private gXb:Landroid/view/View;

.field private gXc:Landroid/widget/Button;

.field private gXd:Landroid/view/View;

.field private gXe:Landroid/widget/Button;

.field private gXf:Landroid/widget/Button;

.field private gXg:Landroid/widget/Button;

.field private gXh:Landroid/widget/Button;

.field private gXi:Landroid/widget/TextView;

.field public gXj:Z

.field private ghN:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 94
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWT:Z

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ghN:J

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWx:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->frx:Ljava/lang/String;

    .line 101
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->fst:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cIr:Landroid/app/ProgressDialog;

    .line 198
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXj:Z

    .line 366
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/ca;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/ca;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ckD:Lcom/tencent/mm/sdk/e/am;

    .line 137
    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 138
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->init()V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWT:Z

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ghN:J

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWx:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->frx:Ljava/lang/String;

    .line 101
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->fst:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cIr:Landroid/app/ProgressDialog;

    .line 198
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXj:Z

    .line 366
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/ca;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/ca;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ckD:Lcom/tencent/mm/sdk/e/am;

    .line 143
    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->init()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWT:Z

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ghN:J

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWx:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->frx:Ljava/lang/String;

    .line 101
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->fst:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cIr:Landroid/app/ProgressDialog;

    .line 198
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXj:Z

    .line 366
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/ca;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/ca;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ckD:Lcom/tencent/mm/sdk/e/am;

    .line 149
    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 150
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->init()V

    .line 151
    return-void
.end method

.method private FR()V
    .locals 3

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->fsg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cQI:Lcom/tencent/mm/storage/i;

    if-nez v0, :cond_2

    .line 160
    :cond_0
    const-string v0, "MicroMsg.NormalUserFooterPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iniView : bindView = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->fsg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/cb;->agI()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->edN:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cQI:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;Lcom/tencent/mm/storage/i;)Lcom/tencent/mm/storage/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cQI:Lcom/tencent/mm/storage/i;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;Lcom/tencent/mm/ui/contact/profile/cb;)Lcom/tencent/mm/ui/contact/profile/cb;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->fst:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWV:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->eDW:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXc:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXe:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXh:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->edN:I

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->fsg:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    .line 156
    return-void
.end method

.method static synthetic j(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWT:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->dNx:Z

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWq:I

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXi:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->frx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWX:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXd:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXg:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/ui/contact/profile/cb;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXb:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXa:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic u(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWY:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic v(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXf:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWZ:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWU:Z

    return v0
.end method

.method static synthetic y(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)J
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ghN:J

    return-wide v0
.end method

.method static synthetic z(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWx:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final Ji()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/cb;->onDetach()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ckD:Lcom/tencent/mm/sdk/e/am;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/e/am;->removeAll()V

    .line 349
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cIr:Landroid/app/ProgressDialog;

    .line 355
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/storage/i;Ljava/lang/String;ZZZIIZZJLjava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->Ji()Z

    .line 207
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 208
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 210
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    const/4 v0, 0x0

    .line 269
    :goto_2
    return v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 214
    :cond_2
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cQI:Lcom/tencent/mm/storage/i;

    .line 215
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->frx:Ljava/lang/String;

    .line 216
    iput-boolean p3, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->dNx:Z

    .line 217
    iput p6, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->edN:I

    .line 218
    iput p7, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWq:I

    .line 219
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWV:Z

    .line 221
    iput-boolean p8, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWT:Z

    .line 222
    iput-boolean p9, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWU:Z

    .line 223
    iput-wide p10, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->ghN:J

    .line 224
    iput-object p12, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWx:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXj:Z

    .line 227
    iget v0, p1, Lcom/tencent/mm/storage/i;->field_deleteFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->fst:Z

    .line 229
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/v;->cm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cc;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    :cond_3
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/cu;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/cu;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    .line 268
    :goto_4
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->FR()V

    .line 269
    const/4 v0, 0x1

    goto :goto_2

    .line 227
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 235
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 236
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/dg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/dg;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    goto :goto_4

    .line 238
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/db;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/db;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    goto :goto_4

    .line 241
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 242
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/df;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/df;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    goto :goto_4

    .line 244
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 245
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/dd;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/dd;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    goto :goto_4

    .line 252
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 253
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/cx;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/cx;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXj:Z

    goto :goto_4

    .line 255
    :cond_a
    if-eqz p4, :cond_b

    .line 256
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/dm;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/dm;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXj:Z

    goto :goto_4

    .line 258
    :cond_b
    if-nez p5, :cond_c

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 259
    :cond_c
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/cv;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/cv;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    goto/16 :goto_4

    .line 262
    :cond_d
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/cx;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/cx;-><init>(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWW:Lcom/tencent/mm/ui/contact/profile/cb;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXj:Z

    goto/16 :goto_4
.end method

.method public final ca(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1864
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1871
    :cond_0
    :goto_0
    return-void

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->cQI:Lcom/tencent/mm/storage/i;

    goto :goto_0
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 173
    const-string v0, "MicroMsg.NormalUserFooterPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on bindView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const v0, 0x7f0a0252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWX:Landroid/view/View;

    .line 175
    const v0, 0x7f0a0253

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWY:Landroid/widget/Button;

    .line 176
    const v0, 0x7f0a025a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gWZ:Landroid/widget/Button;

    .line 177
    const v0, 0x7f0a0256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXc:Landroid/widget/Button;

    .line 178
    const v0, 0x7f0a0255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXb:Landroid/view/View;

    .line 179
    const v0, 0x7f0a0254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXa:Landroid/widget/Button;

    .line 181
    const v0, 0x7f0a025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXg:Landroid/widget/Button;

    .line 183
    const v0, 0x7f0a0257

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXd:Landroid/view/View;

    .line 184
    const v0, 0x7f0a0259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXe:Landroid/widget/Button;

    .line 185
    const v0, 0x7f0a0258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXf:Landroid/widget/Button;

    .line 187
    const v0, 0x7f0a025c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->eDW:Landroid/widget/Button;

    .line 188
    const v0, 0x7f0a025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXh:Landroid/widget/Button;

    .line 189
    const v0, 0x7f0a025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->gXi:Landroid/widget/TextView;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->fsg:Z

    .line 193
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->FR()V

    .line 195
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 196
    return-void
.end method
