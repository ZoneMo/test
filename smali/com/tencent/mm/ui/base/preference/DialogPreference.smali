.class public final Lcom/tencent/mm/ui/base/preference/DialogPreference;
.super Lcom/tencent/mm/ui/base/preference/Preference;
.source "SourceFile"


# instance fields
.field private dpV:Lcom/tencent/mm/ui/base/x;

.field private gFO:Lcom/tencent/mm/ui/base/preference/ai;

.field private final gFQ:Lcom/tencent/mm/ui/base/preference/f;

.field private gFR:Lcom/tencent/mm/ui/base/preference/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/base/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/base/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/tencent/mm/ui/base/preference/f;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/base/preference/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    .line 48
    sget-object v0, Lcom/tencent/mm/p;->bJe:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/ui/base/preference/f;->gFM:[Ljava/lang/CharSequence;

    .line 50
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/ui/base/preference/f;->gFN:[Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/f;->aIa()V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/preference/DialogPreference;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->dpV:Lcom/tencent/mm/ui/base/x;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/base/preference/DialogPreference;)Lcom/tencent/mm/ui/base/preference/f;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/base/preference/DialogPreference;)Lcom/tencent/mm/ui/base/preference/i;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFR:Lcom/tencent/mm/ui/base/preference/i;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/base/preference/DialogPreference;)Lcom/tencent/mm/ui/base/preference/ai;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFO:Lcom/tencent/mm/ui/base/preference/ai;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/preference/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFO:Lcom/tencent/mm/ui/base/preference/ai;

    .line 59
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/i;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFR:Lcom/tencent/mm/ui/base/preference/i;

    .line 137
    return-void
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/preference/f;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/preference/f;->bZy:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    iget-object v1, v1, Lcom/tencent/mm/ui/base/preference/f;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/e;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    iget-object v0, v0, Lcom/tencent/mm/ui/base/preference/e;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    iput-object p1, v0, Lcom/tencent/mm/ui/base/preference/f;->value:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/preference/f;->bZy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/e;

    .line 71
    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/mm/ui/base/preference/f;->dKf:I

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    iget v0, v0, Lcom/tencent/mm/ui/base/preference/e;->id:I

    iput v0, v1, Lcom/tencent/mm/ui/base/preference/f;->dKf:I

    goto :goto_0
.end method

.method protected final showDialog()V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->aWx:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 92
    new-instance v1, Lcom/tencent/mm/ui/base/preference/h;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/preference/h;-><init>(Lcom/tencent/mm/ui/base/preference/DialogPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->gFQ:Lcom/tencent/mm/ui/base/preference/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    new-instance v1, Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/aa;->wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 117
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    .line 118
    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->dpV:Lcom/tencent/mm/ui/base/x;

    .line 119
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->dpV:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 121
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/DialogPreference;->dpV:Lcom/tencent/mm/ui/base/x;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 133
    return-void
.end method
