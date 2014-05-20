.class final Lcom/tencent/mm/plugin/backup/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cMC:Lcom/tencent/mm/plugin/backup/ui/q;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/ui/q;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/ui/s;->cMC:Lcom/tencent/mm/plugin/backup/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->Gl()Lcom/tencent/mm/plugin/backup/model/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/backup/model/ar;->Gx()V

    .line 152
    return-void
.end method
