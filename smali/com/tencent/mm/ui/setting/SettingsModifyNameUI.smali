.class public Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private hfA:Lcom/tencent/mm/ui/widget/MMEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;)Lcom/tencent/mm/ui/widget/MMEditText;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->hfA:Lcom/tencent/mm/ui/widget/MMEditText;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    .line 42
    const v0, 0x7f070330

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->mn(I)V

    .line 44
    const v0, 0x7f0a0751

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/widget/MMEditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->hfA:Lcom/tencent/mm/ui/widget/MMEditText;

    .line 47
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->hfA:Lcom/tencent/mm/ui/widget/MMEditText;

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/tools/p;->fux:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 48
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->hfA:Lcom/tencent/mm/ui/widget/MMEditText;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->hfA:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->hfA:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/widget/MMEditText;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/widget/MMEditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->hfA:Lcom/tencent/mm/ui/widget/MMEditText;

    new-instance v1, Lcom/tencent/mm/ui/setting/da;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/da;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    const v0, 0x7f0709c5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/setting/db;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/db;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;)V

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->dg(Z)V

    .line 89
    new-instance v0, Lcom/tencent/mm/ui/setting/dc;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/dc;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 98
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f030289

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->FR()V

    .line 33
    return-void
.end method
