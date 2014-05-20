.class final Lcom/tencent/mm/ui/setting/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic heE:Lcom/tencent/mm/ui/setting/ay;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/ay;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/az;->heE:Lcom/tencent/mm/ui/setting/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/az;->heE:Lcom/tencent/mm/ui/setting/ay;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;Z)Z

    .line 181
    return-void
.end method
