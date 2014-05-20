.class Linfo/guardianproject/database/MergeHeapCursor$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Linfo/guardianproject/database/MergeHeapCursor;


# direct methods
.method constructor <init>(Linfo/guardianproject/database/MergeHeapCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Linfo/guardianproject/database/MergeHeapCursor$1;->this$0:Linfo/guardianproject/database/MergeHeapCursor;

    .line 15
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor$1;->this$0:Linfo/guardianproject/database/MergeHeapCursor;

    const/4 v1, -0x1

    iput v1, v0, Linfo/guardianproject/database/MergeHeapCursor;->mPos:I

    .line 22
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Linfo/guardianproject/database/MergeHeapCursor$1;->this$0:Linfo/guardianproject/database/MergeHeapCursor;

    const/4 v1, -0x1

    iput v1, v0, Linfo/guardianproject/database/MergeHeapCursor;->mPos:I

    .line 27
    return-void
.end method
