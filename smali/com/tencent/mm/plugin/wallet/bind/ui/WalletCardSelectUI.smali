.class public Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;
.super Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;
.source "SourceFile"


# instance fields
.field private eZo:Ljava/util/List;

.field private eZp:Ljava/util/List;

.field private eZq:Landroid/widget/CheckedTextView;

.field private eZr:Landroid/widget/CheckedTextView;

.field private eZs:Ljava/lang/String;

.field private eZt:I

.field private eZu:I

.field private eZv:Ljava/util/Set;

.field private eZw:I

.field private eZx:I

.field private eZy:Lcom/tencent/mm/plugin/wallet/bind/ui/ax;

.field private eZz:Lcom/tencent/mm/ui/base/MaxListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZo:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZt:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZv:Ljava/util/Set;

    .line 52
    iput v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZw:I

    .line 53
    iput v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZx:I

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZw:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)Lcom/tencent/mm/plugin/wallet/bind/ui/ax;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZy:Lcom/tencent/mm/plugin/wallet/bind/ui/ax;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->bX(Z)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZx:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZq:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method private bX(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 155
    if-eqz p1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZq:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZr:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZy:Lcom/tencent/mm/plugin/wallet/bind/ui/ax;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZo:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->ai(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZy:Lcom/tencent/mm/plugin/wallet/bind/ui/ax;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->notifyDataSetChanged()V

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZz:Lcom/tencent/mm/ui/base/MaxListView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MaxListView;->clearChoices()V

    .line 161
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZw:I

    if-ltz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZz:Lcom/tencent/mm/ui/base/MaxListView;

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZw:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/MaxListView;->setItemChecked(IZ)V

    .line 164
    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    .line 184
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZq:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZr:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZy:Lcom/tencent/mm/plugin/wallet/bind/ui/ax;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->ai(Ljava/util/List;)V

    .line 173
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZy:Lcom/tencent/mm/plugin/wallet/bind/ui/ax;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;->notifyDataSetChanged()V

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZz:Lcom/tencent/mm/ui/base/MaxListView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MaxListView;->clearChoices()V

    .line 175
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZx:I

    if-ltz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZz:Lcom/tencent/mm/ui/base/MaxListView;

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZx:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/MaxListView;->setItemChecked(IZ)V

    .line 178
    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZw:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZr:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZx:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final FR()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_bank_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZs:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_bankcard_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZu:I

    .line 68
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_support_bankcard"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZt:I

    .line 69
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_orders"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faZ:Ljava/util/Set;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZv:Ljava/util/Set;

    .line 74
    :cond_0
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/f;

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZt:I

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->aoK()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/bind/model/f;-><init>(ILjava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->k(Lcom/tencent/mm/n/x;)V

    .line 77
    sget v0, Lcom/tencent/mm/i;->aJG:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MaxListView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZz:Lcom/tencent/mm/ui/base/MaxListView;

    .line 78
    sget v0, Lcom/tencent/mm/i;->apv:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZq:Landroid/widget/CheckedTextView;

    .line 79
    sget v0, Lcom/tencent/mm/i;->apw:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZr:Landroid/widget/CheckedTextView;

    .line 84
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;

    invoke-direct {v0, p0, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ax;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZy:Lcom/tencent/mm/plugin/wallet/bind/ui/ax;

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZz:Lcom/tencent/mm/ui/base/MaxListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZy:Lcom/tencent/mm/plugin/wallet/bind/ui/ax;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MaxListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZz:Lcom/tencent/mm/ui/base/MaxListView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/aq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/aq;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MaxListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/ui/ar;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/ar;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 111
    sget v0, Lcom/tencent/mm/n;->bdY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/as;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/as;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)V

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZq:Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/at;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/at;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZr:Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/au;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/au;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public final Vi()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/plugin/wallet/c/a;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    if-nez p1, :cond_11

    if-nez p2, :cond_11

    .line 250
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/bind/model/f;

    if-eqz v0, :cond_11

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    check-cast p4, Lcom/tencent/mm/plugin/wallet/bind/model/f;

    .line 254
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/bind/model/f;->anm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 255
    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZv:Ljava/util/Set;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZv:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZv:Ljava/util/Set;

    iget-object v5, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->anh()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->ani()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZo:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_3
    const-string v4, "MicroMsg.WalletCardSelectUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "This order not support bankcard_type : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_4
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZt:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 267
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/c/c;->aoe()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    new-instance v3, Lcom/tencent/mm/plugin/wallet/bind/ui/av;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/av;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 287
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 288
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZu:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    .line 289
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    .line 290
    :goto_2
    if-ge v3, v4, :cond_6

    .line 291
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 292
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZs:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 293
    iput v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZx:I

    .line 294
    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->bX(Z)V

    .line 296
    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    .line 301
    :cond_6
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZx:I

    if-gez v0, :cond_7

    .line 302
    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->bX(Z)V

    .line 304
    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    :cond_7
    :goto_3
    move v0, v1

    .line 352
    :goto_4
    return v0

    .line 276
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    new-instance v3, Lcom/tencent/mm/plugin/wallet/bind/ui/aw;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/aw;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 290
    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 308
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    .line 309
    :goto_5
    if-ge v3, v4, :cond_b

    .line 310
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZo:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 311
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZs:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 312
    iput v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZw:I

    .line 313
    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->bX(Z)V

    .line 315
    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    .line 320
    :cond_b
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZw:I

    if-gez v0, :cond_7

    .line 321
    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->bX(Z)V

    .line 323
    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    goto :goto_3

    .line 309
    :cond_c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 327
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    .line 328
    :goto_6
    if-ge v3, v4, :cond_e

    .line 329
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZp:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    .line 330
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZs:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 331
    iput v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZx:I

    .line 332
    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->bX(Z)V

    .line 334
    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    .line 339
    :cond_e
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZx:I

    if-gez v0, :cond_f

    .line 340
    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->bX(Z)V

    .line 342
    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->dg(Z)V

    .line 344
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZq:Landroid/widget/CheckedTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZr:Landroid/widget/CheckedTextView;

    sget v2, Lcom/tencent/mm/h;->ady:I

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->eZr:Landroid/widget/CheckedTextView;

    sget v2, Lcom/tencent/mm/h;->aiK:I

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto/16 :goto_3

    .line 328
    :cond_10
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_11
    move v0, v2

    .line 352
    goto/16 :goto_4
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 188
    sget v0, Lcom/tencent/mm/k;->bbz:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/tencent/mm/n;->bFW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->mn(I)V

    .line 61
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;->FR()V

    .line 62
    return-void
.end method
