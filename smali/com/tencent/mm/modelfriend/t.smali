.class final Lcom/tencent/mm/modelfriend/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic cqQ:Lcom/tencent/mm/modelfriend/p;

.field final synthetic cqR:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelfriend/p;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/t;->cqQ:Lcom/tencent/mm/modelfriend/p;

    iput p2, p0, Lcom/tencent/mm/modelfriend/t;->cqR:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/t;->cqQ:Lcom/tencent/mm/modelfriend/p;

    iget v1, p0, Lcom/tencent/mm/modelfriend/t;->cqR:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/p;->db(I)V

    .line 333
    return-void
.end method
