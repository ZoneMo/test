.class final Lcom/tencent/mm/ui/setting/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const v2, 0x7f070109

    const/4 v5, 0x1

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->a(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->a(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->b(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->b(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->d(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->c(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    const v1, 0x7f07010a

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    .line 112
    :goto_0
    return v5

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->d(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    const v1, 0x7f07010b

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->d(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->ic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    const v1, 0x7f070167

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->d(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hV(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->d(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->d(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_3

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    const v1, 0x7f070093

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    const v1, 0x7f070094

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->SM()V

    .line 102
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x13006

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    new-instance v1, Lcom/tencent/mm/modelsimple/ap;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->d(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/modelsimple/ap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    const v4, 0x7f0709bb

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->getString(I)Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/dd;->hfG:Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    const v4, 0x7f070392

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/setting/de;

    invoke-direct {v4, p0, v1}, Lcom/tencent/mm/ui/setting/de;-><init>(Lcom/tencent/mm/ui/setting/dd;Lcom/tencent/mm/modelsimple/ap;)V

    invoke-static {v2, v3, v5, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;->a(Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0
.end method
