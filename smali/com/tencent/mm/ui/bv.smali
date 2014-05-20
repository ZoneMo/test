.class final Lcom/tencent/mm/ui/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic goa:Landroid/widget/CheckBox;

.field final synthetic gob:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/tencent/mm/ui/bv;->goa:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/tencent/mm/ui/bv;->gob:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 673
    iget-object v0, p0, Lcom/tencent/mm/ui/bv;->goa:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/tencent/mm/ui/bv;->gob:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 675
    const-string v1, "gprs_alert"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 676
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    :cond_0
    sput-boolean v2, Lcom/tencent/mm/sdk/platformtools/j;->gcp:Z

    .line 679
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 680
    return-void
.end method
