.class final Lcom/tencent/mm/ui/setting/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hfj:Lcom/tencent/mm/ui/setting/br;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/br;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/bs;->hfj:Lcom/tencent/mm/ui/setting/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/bs;->hfj:Lcom/tencent/mm/ui/setting/br;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/br;->hfi:Lcom/tencent/mm/ui/setting/SettingsAliasUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->d(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    .line 143
    return-void
.end method
