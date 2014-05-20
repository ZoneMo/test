.class final Lcom/tencent/mm/pluginsdk/ui/applet/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/x;


# instance fields
.field final synthetic fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/s;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/v;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final arW()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/v;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->b(Lcom/tencent/mm/pluginsdk/ui/applet/s;)Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/v;->fnX:Lcom/tencent/mm/pluginsdk/ui/applet/s;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/s;->b(Lcom/tencent/mm/pluginsdk/ui/applet/s;)Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 86
    :cond_0
    return-void
.end method
