.class final Lcom/tencent/mm/ui/setting/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic heS:Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/bl;->heS:Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 592
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/bl;->heS:Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/bl;->heS:Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->b(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->dismiss()V

    .line 594
    return-void
.end method
