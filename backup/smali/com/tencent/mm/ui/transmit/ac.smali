.class final Lcom/tencent/mm/ui/transmit/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hrT:Lcom/tencent/mm/ui/transmit/aa;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/transmit/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/tencent/mm/ui/transmit/ac;->hrT:Lcom/tencent/mm/ui/transmit/aa;

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
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/ac;->hrT:Lcom/tencent/mm/ui/transmit/aa;

    invoke-static {v0}, Lcom/tencent/mm/ui/transmit/aa;->b(Lcom/tencent/mm/ui/transmit/aa;)V

    .line 143
    return-void
.end method
